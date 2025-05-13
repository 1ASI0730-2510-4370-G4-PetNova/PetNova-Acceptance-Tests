Feature: Agendamiento de Citas
  Como usuario dueño de mascotas, quiero programar citas veterinarias para asegurar que mi mascota reciba atención médica cuando lo necesite.

  Scenario: Agendamiento exitoso de cita
    Given que el usuario selecciona la opción "Nueva cita"
    When completa los campos requeridos como mascota, veterinario, fecha, hora y motivo y confirma
    Then el sistema debe registrar la cita
    And mostrar un comprobante con los detalles

  Scenario: Intento de agendar en horario no disponible
    Given que el usuario intenta agendar una cita
    When selecciona una fecha/hora ya ocupada
    Then el sistema debe mostrar horarios alternativos disponibles
    And no permitir el registro duplicado