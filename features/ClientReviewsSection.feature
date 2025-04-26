Feature: Revisión de Reseñas de Clientes
  Como visitante, quiero leer las reseñas de otros clientes para evaluar la experiencia que han tenido con la plataforma.

  Scenario: El visitante visualiza las reseñas de clientes
    Given que el visitante está en la Landing Page
    When se desplaza a la sección de reseñas de clientes
    Then el sistema debe mostrar una lista de reseñas con el nombre del cliente, su comentario y calificación

  Scenario: El visitante no encuentra reseñas disponibles
    Given que el visitante está en la sección de reseñas de la Landing Page
    When no hay reseñas registradas en la plataforma
    Then el sistema debe mostrar un mensaje indicando que no hay reseñas disponibles actualmente

  Scenario: El visitante accede a la sección desde un dispositivo móvil
    Given que el visitante está explorando la Landing Page en un dispositivo móvil
    When se desplaza a la sección de reseñas de clientes
    Then el sistema debe mostrar las reseñas en un formato adaptado para móviles