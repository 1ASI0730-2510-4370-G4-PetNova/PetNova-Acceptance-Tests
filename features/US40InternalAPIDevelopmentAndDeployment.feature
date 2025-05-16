Feature: Desarrollo y Despliegue de API Interna
  Como desarrollador/integrador, quiero crear y desplegar la API interna para conectar la base de datos con la aplicación.

  Scenario: Implementación de endpoints
    Given que se tiene una base de datos funcional
    When se desarrollan endpoints REST para CRUD
    Then la aplicación debe poder consumir y manipular datos correctamente

  Scenario: Despliegue en ambiente de prueba
    Given que la API está lista
    When se despliega en ambiente de staging
    Then debe estar disponible para pruebas integradas con la app web