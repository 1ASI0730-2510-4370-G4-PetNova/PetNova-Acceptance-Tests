Feature: Generación de Reporte de Inventario
  Como administrador, necesito generar reportes que muestren los medicamentos disponibles, próximos a caducar y agotados.

  Scenario: El administrador genera un reporte de inventario
    Given que el administrador está en la sección de reportes de inventario
    When solicita generar un reporte de medicamentos
    Then el sistema debe mostrar un reporte con los medicamentos disponibles, próximos a caducar y agotados

  Scenario: El administrador genera un reporte sin medicamentos registrados
    Given que el administrador está en la sección de reportes de inventario
    When no hay medicamentos registrados en el sistema
    Then el sistema debe mostrar un mensaje indicando que no hay datos disponibles para generar el reporte

  Scenario: El administrador filtra el reporte por medicamentos próximos a caducar
    Given que el administrador está en la sección de reportes de inventario
    When filtra el reporte para mostrar solo medicamentos próximos a caducar
    Then el sistema debe mostrar únicamente los medicamentos que cumplen con ese criterio