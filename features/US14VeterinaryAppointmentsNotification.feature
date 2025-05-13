Feature: Notificación de Citas Veterinarias
  Como usuario dueño de mascotas, quiero recibir notificaciones sobre mis citas veterinarias para recordar cuándo debo llevar a mi mascota al veterinario.

  Scenario: El usuario recibe un recordatorio de su cita veterinaria
    Given que el usuario ha agendado una cita con el veterinario
    When faltan 24 horas para la cita
    Then el sistema debe enviar una notificación al usuario recordándole la cita, incluyendo los detalles como la fecha, hora y veterinario asignado

  Scenario: El usuario recibe un recordatorio el día de la cita
    Given que el usuario tiene una cita con el veterinario programada
    When es el mismo día de la cita, una hora antes de la hora establecida
    Then el sistema debe enviar una notificación final de recordatorio