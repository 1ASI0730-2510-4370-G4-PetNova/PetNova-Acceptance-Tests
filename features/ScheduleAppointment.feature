Feature: Agendamiento de Citas
  Como usuario, quiero programar citas veterinarias para asegurar que mi mascota reciba atención médica cuando lo necesite.

  Scenario: El usuario agenda una cita con éxito
    Given que el usuario está en la sección de agendamiento de citas
    When selecciona una fecha, hora y veterinario disponibles, e ingresa los datos requeridos de la mascota
    Then el sistema debe confirmar la cita y mostrar un mensaje con los detalles de la misma

  Scenario: El usuario intenta agendar una cita en un horario no disponible
    Given que el usuario está en la sección de agendamiento de citas
    When selecciona un horario que ya está ocupado
    Then el sistema debe mostrar un mensaje de error indicando que el horario no está disponible y sugerir otros horarios

  Scenario: El usuario no selecciona una mascota para la cita
    Given que el usuario está intentando agendar una cita
    When envía el formulario sin seleccionar una mascota
    Then el sistema debe mostrar un mensaje de error solicitando que seleccione una mascota para la cita