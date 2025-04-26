Feature: Gestión de Citas
  Como usuario, deseo gestionar mis citas agendadas para modificarlas o cancelarlas según sea necesario.

  Scenario: El usuario modifica una cita existente
    Given que el usuario está en la sección de gestión de citas
    When cambia la fecha, hora o veterinario de una cita ya agendada
    Then el sistema debe actualizar la cita y mostrar un mensaje confirmando la modificación

  Scenario: El usuario cancela una cita
    Given que el usuario está en la sección de gestión de citas
    When selecciona la opción para cancelar una cita
    Then el sistema debe eliminar la cita y mostrar un mensaje confirmando la cancelación

  Scenario: El usuario intenta modificar una cita con horario no disponible
    Given que el usuario está editando una cita existente
    When selecciona un nuevo horario que no está disponible
    Then el sistema debe mostrar un mensaje de error indicando que el horario está ocupado y sugerir otras opciones