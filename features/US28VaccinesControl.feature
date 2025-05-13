Feature: Control de Vacunas
  Como médico veterinario, para llevar un control de las vacunas administradas, necesito registrar el tipo de vacuna, fecha de aplicación, dosis, y el animal tratado.

  Scenario: Registro completo de vacunación
    Given que el veterinario selecciona un animal en el sistema
    When ingresa tipo de vacuna, dosis, fecha y firma el registro
    Then el sistema debe vincular la vacuna al historial médico del animal
    And actualizar el stock automáticamente

  Scenario: Intento de registro con dosis inválida
    Given que el veterinario ingresa una dosis menor al mínimo requerido
    When intenta guardar
    Then el sistema debe mostrar un mensaje indicando que la dosis no es válida
    And recordar la dosis mínima

  Scenario: Vacuna ya aplicada recientemente
    Given que el animal recibió la misma vacuna hace menos de 21 días
    When el veterinario intenta registrar otra dosis
    Then el sistema debe mostrar un mensaje indicando la fecha de vacunación
    And un mensaje de confirmación