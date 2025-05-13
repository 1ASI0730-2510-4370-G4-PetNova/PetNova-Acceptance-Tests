Feature: Visualización de Videos en la Sección de Características
  Como visitante, quiero ver los videos informativos sobre los productos y servicios para obtener más información sobre PetNova.

  Scenario: Reproducción básica
    Given que el visitante hace clic en un video
    When se inicia la reproducción
    Then debe mostrar controles estándar como play/pause, volumen

  Scenario: Optimización de carga
    Given que el visitante tiene conexión lenta
    When carga la página
    Then debe mostrar miniaturas estáticas antes de reproducir