Feature: Visualización del Historial Médico
  Como administrador del sistema o medico veterinario, quiero acceder al historial médico de mi mascota para consultar su estado de salud y tratamientos anteriores.

  Scenario: Consulta exitosa del historial médico de una mascota
    Given que soy un usuario autenticado dentro de la plataforma
    When ingreso al perfil de mi mascota y selecciono la opción para ver su historial médico
    Then el sistema debe mostrar todos los registros disponibles, incluyendo diagnósticos, tratamientos y citas anteriores

  Scenario: Historial médico sin registros disponibles
    Given que soy un usuario autenticado revisando el perfil de mi mascota
    When intento acceder a su historial médico y no hay datos registrados
    Then el sistema debe mostrar un mensaje informando que aún no existe información médica registrada