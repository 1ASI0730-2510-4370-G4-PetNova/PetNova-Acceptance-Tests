Feature: Edición de Citas Veterinarias
  Como administrador, quiero editar las citas para modificar la fecha o el estado según sea necesario.

  Scenario: El administrador edita una cita existente
    Given que el administrador está en la sección de gestión de citas
    When modifica la fecha, hora o estado de una cita
    Then el sistema debe guardar los cambios y notificar al usuario con los nuevos detalles

  Scenario: El administrador intenta editar con un horario no disponible
    Given que el administrador está editando una cita
    When selecciona un horario que ya está ocupado
    Then el sistema debe mostrar un mensaje de error indicando que el horario no está disponible y sugerir otras opciones

  Scenario: El administrador intenta editar una cita inexistente
    Given que el administrador está en la sección de gestión de citas
    When intenta editar una cita que ya no existe en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que la cita no se encuentra