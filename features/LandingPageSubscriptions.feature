Feature: Gestión de Suscripciones en la Landing Page
  Como visitante, quiero revisar los planes de suscripción en la página principal para poder elegir el plan que mejor se adapte a mis necesidades.

  Scenario: El visitante visualiza los planes de suscripción
    Given que el visitante está en la Landing Page
    When se desplaza a la sección de suscripciones
    Then el sistema debe mostrar una lista clara de los planes disponibles con sus beneficios y precios

  Scenario: El visitante selecciona un plan para suscribirse
    Given que el visitante está en la sección de suscripciones de la Landing Page
    When selecciona un plan y procede al proceso de suscripción
    Then el sistema debe redirigirlo al formulario de registro o inicio de sesión para completar la suscripción

  Scenario: El visitante accede a la sección desde un dispositivo móvil
    Given que el visitante está explorando la Landing Page en un dispositivo móvil
    When se desplaza a la sección de suscripciones
    Then el sistema debe mostrar los planes en un formato adaptado para móviles