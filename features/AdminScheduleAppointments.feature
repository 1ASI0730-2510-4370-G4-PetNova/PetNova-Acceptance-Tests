Feature: Agendamiento Citas Admin
  Como administrador, deseo agendar citas para los usuarios para facilitar la gestión de citas veterinarias.

  Scenario: El administrador agenda una cita para un usuario
    Given que el administrador está en la sección de agendamiento de citas
    When selecciona un usuario, una mascota, fecha, hora y veterinario disponibles
    Then el sistema debe registrar la cita y notificar al usuario con los detalles de la misma

  Scenario: El administrador intenta agendar en un horario ocupado
    Given que el administrador está agendando una cita
    When selecciona un horario que ya está ocupado
    Then el sistema debe mostrar un mensaje de error indicando que el horario no está disponible y sugerir otras opciones

  Scenario: El administrador omite datos obligatorios al agendar
    Given que el administrador está en la sección de agendamiento de citas
    When intenta guardar una cita sin completar todos los campos requeridos
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes