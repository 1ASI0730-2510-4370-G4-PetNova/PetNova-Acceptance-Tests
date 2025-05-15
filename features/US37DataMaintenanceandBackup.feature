
Feature: Mantenimiento y Backup de Datos
  Como Administrador DevOps, quiero realizar backups y mantenimiento de la base de datos para asegurar la integridad y disponibilidad de la información.

  Scenario: Realización de backup periódico
    Given que el sistema está en producción
    When se programa una tarea automática de backup
    Then se debe crear una copia de seguridad sin afectar la disponibilidad

  Scenario: Restauración de datos
    Given que ocurre una pérdida o corrupción de datos
    When se utiliza un backup para restaurar
    Then el sistema debe recuperar la información al estado previo al incidente
