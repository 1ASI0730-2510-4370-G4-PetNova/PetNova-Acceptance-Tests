Feature: Edición de Citas Veterinarias
  Como administrador del sistema o medico veterinario, quiero editar las citas para modificar la fecha o el estado según sea necesario.

  Scenario: El administrador modifica la fecha de una cita
    Given que el administrador se encuentra en la sección de gestión de citas
    When selecciona una cita y ajusta su fecha o hora
    Then el sistema debe actualizar la cita con la nueva información
    And enviar una notificación al usuario afectado informándole del cambio

  Scenario: El administrador actualiza el estado de una cita
    Given que el administrador está gestionando las citas
    When selecciona una cita y cambia su estado
    Then el sistema debe reflejar el nuevo estado
    And enviar una actualización al usuario de la cita