Feature: Notificación de Historial Médico
  Como usuario, quiero recibir notificaciones sobre actualizaciones en el historial médico de mi mascota para estar informado sobre su salud.

  Scenario: El usuario recibe una notificación de actualización del historial médico
    Given que el historial médico de la mascota del usuario ha sido actualizado
    When se registra una nueva entrada como una consulta o tratamiento
    Then el sistema debe enviar una notificación al usuario con los detalles de la actualización

  Scenario: El usuario no recibe la notificación esperada
    Given que el historial médico de la mascota ha sido actualizado
    When no se envía la notificación dentro de las 24 horas
    Then el sistema debe registrar el fallo y permitir al usuario contactar al soporte técnico

  Scenario: El usuario desactiva las notificaciones de historial médico
    Given que el usuario está en la configuración de su cuenta
    When desactiva la opción de notificaciones de historial médico
    Then el sistema debe respetar esta preferencia y no enviar notificaciones de actualizaciones futuras