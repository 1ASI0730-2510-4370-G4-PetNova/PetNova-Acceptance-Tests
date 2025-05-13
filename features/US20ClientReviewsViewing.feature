Feature: Revisión de Reseñas de Clientes
  Como visitante, quiero leer las reseñas de otros clientes para evaluar la experiencia que han tenido con la plataforma.

  Scenario: Navegación entre reseñas
    Given que el visitante accede a las reseñas
    When usa los controles de carrusel
    Then debe mostrar 3 reseñas por vista con estrellas de valoración

  Scenario: Verificación de autenticidad
    Given que el visitante lee una reseña
    When busca detalles
    Then debe mostrar nombre y fecha de la reseña