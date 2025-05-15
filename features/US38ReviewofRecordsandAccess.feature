Feature: Revisión de Logs y Accesos
  Como auditor de seguridad, quiero revisar los registros de accesos y cambios en el sistema para asegurar el cumplimiento de políticas y detectar anomalías.

  Scenario: Acceso a logs de usuario
    Given que un auditor accede al sistema
    When solicita los registros de acceso de un usuario
    Then el sistema debe mostrar el historial completo de accesos

  Scenario: Detección de actividad sospechosa
    Given que el sistema analiza patrones de acceso
    When detecta múltiples intentos fallidos de login
    Then debe generar una alerta para revisión inmediata
