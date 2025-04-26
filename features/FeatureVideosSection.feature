Feature: Visualización de Videos en la Sección de Características
  Como visitante, quiero ver los videos informativos sobre los productos y servicios para obtener más información sobre PetNova.

  Scenario: El visitante visualiza un video en la sección de características
    Given que el visitante está en la Landing Page
    When se desplaza a la sección de características y selecciona un video
    Then el sistema debe reproducir el video sin errores

  Scenario: El visitante no puede reproducir un video debido a un error
    Given que el visitante está en la sección de características
    When intenta reproducir un video que no está disponible
    Then el sistema debe mostrar un mensaje de error indicando que el video no se puede reproducir

  Scenario: El visitante accede a la sección desde un dispositivo móvil
    Given que el visitante está explorando la Landing Page en un dispositivo móvil
    When se desplaza a la sección de características y selecciona un video
    Then el sistema debe reproducir el video en un formato adaptado para móviles