Feature: Historial de Medicamentos
  Como médico veterinario, necesito acceder al historial completo de tratamientos y vacunas de un animal en específico.

  Scenario: El veterinario consulta el historial de medicamentos de un animal
    Given que el veterinario está en la sección de historial de medicamentos
    When selecciona un animal específico para consultar su historial
    Then el sistema debe mostrar un listado con los tratamientos y vacunas aplicados al animal

  Scenario: El veterinario consulta un animal sin historial
    Given que el veterinario está en la sección de historial de medicamentos
    When selecciona un animal que no tiene historial de tratamientos o vacunas
    Then el sistema debe mostrar un mensaje indicando que no hay registros disponibles

  Scenario: El veterinario intenta consultar un animal no registrado
    Given que el veterinario está en la sección de historial de medicamentos
    When intenta consultar un animal que no está registrado en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que el animal no existe