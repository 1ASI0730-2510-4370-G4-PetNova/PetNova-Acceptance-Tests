Feature: Acceso Remoto a Datos de Salud
  Como veterinario, quiero visualizar los datos históricos de dispositivos IoT (actividad, sueño, ingesta de agua) para diagnosticar patrones anormales en mis pacientes.

  Scenario: El veterinario accede a los datos históricos de una mascota
    Given que el veterinario está en la sección de datos de salud remotos
    When selecciona una mascota y solicita los datos históricos de actividad, sueño e ingesta de agua
    Then el sistema debe mostrar un informe detallado con los datos registrados

  Scenario: No hay datos históricos disponibles para la mascota
    Given que el veterinario intenta acceder a los datos de salud de una mascota
    When no hay datos históricos registrados para esa mascota
    Then el sistema debe mostrar un mensaje indicando que no hay datos disponibles

  Scenario: El veterinario detecta un patrón anormal en los datos
    Given que el veterinario está revisando los datos históricos de una mascota
    When identifica un patrón anormal como disminución en la actividad o ingesta de agua
    Then el sistema debe permitir al veterinario generar una alerta para el dueño de la mascota