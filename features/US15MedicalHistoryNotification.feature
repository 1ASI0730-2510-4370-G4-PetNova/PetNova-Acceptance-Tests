Feature: Notificación de Historial Médico
  Como usuario dueño de mascotas, quiero recibir notificaciones sobre actualizaciones en el historial médico de mi mascota para estar informado sobre su salud.

  Scenario: El usuario recibe una notificación de cambios en el historial médico
    Given que el veterinario ha realizado actualizaciones en el historial médico de la mascota
    When se añaden nuevos registros como vacunas, diagnósticos o tratamientos
    Then el sistema debe enviar una notificación al usuario informándole que se han realizado actualizaciones en el historial médico de su mascota

  Scenario: El usuario recibe una notificación sobre los resultados de exámenes médicos
    Given que el usuario está esperando los resultados de un examen médico para su mascota
    When el veterinario sube los resultados al sistema
    Then el sistema debe notificar al usuario que los resultados están disponibles para su revisión