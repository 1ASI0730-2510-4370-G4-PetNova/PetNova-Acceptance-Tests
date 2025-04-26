Feature: Publicación de Foro
  Como usuario, deseo publicar un tema en el foro para compartir experiencias o hacer preguntas a la comunidad.

  Scenario: El usuario crea una nueva publicación en el foro
    Given que el usuario está en la sección del foro
    When completa el formulario con un título, descripción y categoría para su publicación
    Then el sistema debe publicar el tema y mostrar un mensaje confirmando la publicación exitosa

  Scenario: El usuario intenta publicar sin completar los campos requeridos
    Given que el usuario está en la sección del foro
    When intenta enviar una publicación sin título o descripción
    Then el sistema debe mostrar un mensaje de error indicando que debe completar todos los campos obligatorios

  Scenario: El usuario publica un tema con contenido inapropiado
    Given que el usuario está creando una publicación en el foro
    When incluye lenguaje ofensivo o contenido no permitido
    Then el sistema debe rechazar la publicación y mostrar un mensaje indicando que el contenido viola las políticas de la plataforma