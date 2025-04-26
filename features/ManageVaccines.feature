Feature: Control de Vacunas
  Como médico veterinario, para llevar un control de las vacunas administradas, necesito registrar el tipo de vacuna, fecha de aplicación, dosis y el animal tratado.

  Scenario: El veterinario registra una nueva vacuna
    Given que el veterinario está en la sección de control de vacunas
    When registra una vacuna con el tipo, fecha de aplicación, dosis y el animal tratado
    Then el sistema debe guardar la información y mostrar un mensaje confirmando el registro exitoso

  Scenario: El veterinario omite datos obligatorios al registrar una vacuna
    Given que el veterinario está registrando una vacuna
    When intenta guardar sin completar los campos requeridos
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes

  Scenario: El veterinario registra una vacuna para un animal no registrado
    Given que el veterinario está en la sección de control de vacunas
    When intenta registrar una vacuna para un animal que no existe en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que el animal no está registrado