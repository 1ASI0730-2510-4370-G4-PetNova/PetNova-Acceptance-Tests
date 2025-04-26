Feature: Gestión de Citas Veterinarias
  Como administrador, quiero gestionar las citas veterinarias para coordinar de manera eficiente la atención de las mascotas.

  Scenario: El administrador modifica una cita existente
    Given que el administrador está en la sección de gestión de citas veterinarias
    When cambia la fecha, hora o veterinario de una cita agendada
    Then el sistema debe actualizar la cita y notificar al usuario con los nuevos detalles

  Scenario: El administrador cancela una cita
    Given que el administrador está en la sección de gestión de citas veterinarias
    When selecciona la opción para cancelar una cita
    Then el sistema debe eliminar la cita y notificar al usuario sobre la cancelación

  Scenario: El administrador intenta modificar una cita con horario no disponible
    Given que el administrador está editando una cita existente
    When selecciona un horario que ya está ocupado
    Then el sistema debe mostrar un mensaje de error indicando que el horario no está disponible y sugerir otras opciones