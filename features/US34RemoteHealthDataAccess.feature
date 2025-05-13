Feature: Acceso Remoto a Datos de Salud
  Como veterinario, quiero visualizar los datos históricos de dispositivos IoT para diagnosticar patrones anormales en mis pacientes.

  Scenario: Consulta de historial completo
    Given que el veterinario selecciona una mascota y un rango de fechas
    When solicita el historial de salud
    Then el sistema debe mostrar gráficos y tablas con los datos almacenados

  Scenario: Filtrado de datos por métrica
    Given que el veterinario necesita analizar solo la ingesta de agua
    When aplica un filtro para esa métrica específica
    Then el sistema debe ocultar los datos no relevantes
    And resaltar tendencias anormales