Feature: Gestión de Suscripciones
  Como administrador, deseo gestionar las suscripciones de los usuarios para mantener un control sobre los planes activos.

  Scenario: El administrador revisa las suscripciones activas
    Given que el administrador está en la sección de gestión de suscripciones
    When solicita ver la lista de usuarios suscritos
    Then el sistema debe mostrar un listado con los usuarios, sus planes y fechas de renovación

  Scenario: El administrador cancela una suscripción
    Given que el administrador está en la sección de gestión de suscripciones
    When selecciona la opción para cancelar la suscripción de un usuario
    Then el sistema debe desactivar la suscripción y notificar al usuario sobre la cancelación

  Scenario: El administrador actualiza el plan de un usuario
    Given que el administrador está gestionando las suscripciones
    When cambia el plan de un usuario a uno diferente
    Then el sistema debe actualizar la suscripción y notificar al usuario sobre los nuevos beneficios del plan