Feature: Cancelación de Citas
  Como usuario dueño de mascotas, quiero cancelar una cita veterinaria si no puedo asistir, para evitar conflictos de horario y poder reprogramarla cuando sea conveniente.

  Scenario: Cancelación exitosa de cita
    Given que el usuario accede a sus citas programadas
    When selecciona "Cancelar cita" y confirma la acción
    Then el sistema debe eliminar el registro
    And liberar el horario

  Scenario: Intento de cancelar cita con menos de 24 horas de anticipación
    Given que el usuario intenta cancelar una cita
    When faltan menos de 24 horas para la cita
    Then el sistema debe mostrar advertencia sobre posible penalización
    And permitir la cancelación