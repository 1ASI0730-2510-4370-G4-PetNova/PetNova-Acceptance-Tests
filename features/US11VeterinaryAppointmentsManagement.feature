Feature: Gestión de Citas Veterinarias
  Como administrador del sistema o medico veterinario, quiero gestionar las citas veterinarias para coordinar de manera eficiente la atención de las mascotas.

  Scenario: El administrador consulta todas las citas agendadas
    Given que el administrador se encuentra en la sección de administración de citas
    When accede a la lista de citas programadas
    Then el sistema debe mostrar un listado con todos los detalles de las citas, incluyendo la fecha, hora, veterinario asignado y el estado de cada cita

  Scenario: El administrador filtra las citas por estado o fecha
    Given que el administrador está en la sección de gestión de citas
    When utiliza los filtros disponibles para buscar citas según su estado o por fecha
    Then el sistema debe mostrar únicamente las citas que cumplan con los criterios seleccionados