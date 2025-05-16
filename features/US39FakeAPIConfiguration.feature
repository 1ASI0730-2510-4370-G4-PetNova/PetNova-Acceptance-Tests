Feature: Configuración de Fake API
  Como integrador, quiero configurar la fake API para simular respuestas y facilitar el desarrollo y pruebas del sistema.

  Scenario: Definición de endpoints falsos
    Given que se requiere simular la API
    When se configuran endpoints con respuestas predefinidas
    Then el sistema debe devolver datos simulados para pruebas

  Scenario: Actualización de respuestas simuladas
    Given que se modifican las respuestas de la fake API
    When se modifican las respuestas de la fake API
    Then las pruebas deben reflejar los nuevos datos simulados