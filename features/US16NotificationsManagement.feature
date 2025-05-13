Feature: Gestión de Notificaciones
  Como administrador del sistema o medico veterinario, quiero gestionar el envío de notificaciones para asegurarme de que los usuarios reciban la información importante de manera oportuna.

  Scenario: El administrador configura el envío de notificaciones
    Given que el administrador se encuentra en la sección de gestión de notificaciones
    When define los criterios para el envío de notificaciones
    Then el sistema debe programar el envío de las notificaciones de acuerdo con los criterios establecidos

  Scenario: El administrador cancela una notificación programada
    Given que el administrador ha programado una notificación para una cita
    When la cita es cancelada o reprogramada
    Then el sistema debe cancelar la notificación previamente programada o ajustarla a la nueva fecha y hora