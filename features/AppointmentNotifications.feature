Feature: Notificaciones de Citas
  Como usuario, deseo recibir notificaciones sobre mis citas para no olvidarlas.

  Scenario: El usuario recibe una notificación antes de la cita
    Given que el usuario tiene una cita agendada
    When faltan 24 horas para la cita
    Then el sistema debe enviar una notificación recordatoria con los detalles de la cita

  Scenario: El usuario no recibe la notificación esperada
    Given que el usuario tiene una cita agendada
    When han pasado las 24 horas previas a la cita y no se envió la notificación
    Then el sistema debe registrar el fallo y permitir al usuario contactar al soporte técnico

  Scenario: El usuario desactiva las notificaciones de citas
    Given que el usuario está en la configuración de su cuenta
    When desactiva la opción de notificaciones de citas
    Then el sistema debe respetar esta preferencia y no enviar notificaciones para citas futuras