Feature: Gestión de Suscripciones en la Landing Page
  Como visitante, quiero revisar los planes de suscripción en la página principal para poder elegir el plan que mejor se adapte a mis necesidades.

  Scenario: Comparación de planes
    Given que el visitante ve la sección de suscripciones
    When explora los planes
    Then debe mostrar tabla comparativa con precios y características clave

  Scenario: Selección de plan
    Given que el visitante hace clic en "Seleccionar" en un plan
    When confirma
    Then debe redirigir al formulario de registro/pago