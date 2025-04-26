Feature: Sección Suscripción
  Como usuario, quiero una sección que me permita suscribirme a un plan para acceder a beneficios adicionales.

  Scenario: El usuario se suscribe a un plan premium
    Given que el usuario está en la sección de suscripción
    When selecciona un plan premium y completa el proceso de pago
    Then el sistema debe activar la suscripción y mostrar un mensaje confirmando que ahora tiene acceso a los beneficios premium

  Scenario: El usuario intenta suscribirse sin completar el pago
    Given que el usuario está en la sección de suscripción
    When selecciona un plan pero no completa el proceso de pago
    Then el sistema debe mostrar un mensaje de error indicando que el pago es necesario para activar la suscripción

  Scenario: El usuario visualiza los beneficios de la suscripción
    Given que el usuario está explorando la sección de suscripción
    When revisa los detalles de los planes disponibles
    Then el sistema debe mostrar una lista clara de los beneficios asociados a cada plan