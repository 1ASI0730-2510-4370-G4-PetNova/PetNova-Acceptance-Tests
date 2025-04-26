Feature: Cancelación de Citas
  Como usuario, quiero cancelar una cita veterinaria si no puedo asistir, para evitar conflictos de horario y poder reprogramar cuando sea conveniente.

  Scenario: El usuario cancela una cita existente
    Given que el usuario tiene una cita agendada
    When selecciona la opción para cancelar la cita
    Then el sistema debe eliminar la cita y mostrar un mensaje confirmando la cancelación

  Scenario: El usuario intenta cancelar una cita que no existe
    Given que el usuario está en la sección de gestión de citas
    When intenta cancelar una cita que ya no está en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que la cita no se encuentra

  Scenario: El usuario cancela una cita muy cerca de la fecha programada
    Given que el usuario tiene una cita agendada
    When intenta cancelar la cita con menos de 24 horas de aviso
    Then el sistema debe mostrar una advertencia sobre posibles penalizaciones y solicitar confirmación antes de proceder