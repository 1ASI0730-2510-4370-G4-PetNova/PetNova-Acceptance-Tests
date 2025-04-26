Feature: Moderación de Foro
  Como administrador, deseo moderar las publicaciones del foro para garantizar que cumplan con las políticas de la plataforma.

  Scenario: El administrador elimina una publicación inapropiada
    Given que el administrador está en la sección de moderación del foro
    When identifica una publicación que viola las normas y selecciona la opción para eliminarla
    Then el sistema debe eliminar la publicación y notificar al usuario que su publicación fue retirada por infringir las políticas

  Scenario: El administrador edita una publicación para corregirla
    Given que el administrador está revisando las publicaciones del foro
    When encuentra una publicación con errores menores y la edita para ajustarla a las normas
    Then el sistema debe guardar los cambios y notificar al usuario sobre la edición realizada

  Scenario: El administrador aprueba una publicación pendiente
    Given que el administrador está en la sección de moderación del foro
    When revisa una publicación pendiente y la aprueba
    Then el sistema debe hacer visible la publicación en el foro y notificar al usuario que su publicación fue aprobada