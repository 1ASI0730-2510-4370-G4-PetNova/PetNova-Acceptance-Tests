Feature: Generación de Reporte de Inventario
  Como administrador de la veterinaria, necesito generar reportes que muestren los medicamentos disponibles, próximos a caducar y agotados.

  Scenario: Generación de reporte general
    Given que el administrador selecciona "Generar reporte"
    When elige el filtro "Todos los medicamentos"
    Then exportar un PDF con stock actual, caducidades próximas y agotados

  Scenario: Filtrado por caducidad
    Given que el administrador activa el filtro "Próximos a caducar"
    When genera el reporte
    Then listar solo medicamentos con caducidad en los próximos 30 días