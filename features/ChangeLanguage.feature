Feature: Cambio de Idioma en la App Web
  Como usuario, quiero tener la opción de cambiar el idioma de la aplicación web para poder utilizarla en inglés o español, de acuerdo con mi preferencia.

  Scenario: El usuario cambia el idioma a inglés
    Given que el usuario está en la aplicación web
    When selecciona la opción para cambiar el idioma a inglés
    Then el sistema debe actualizar la interfaz y mostrar todos los textos en inglés

  Scenario: El usuario cambia el idioma a español
    Given que el usuario está en la aplicación web con el idioma en inglés
    When selecciona la opción para cambiar el idioma a español
    Then el sistema debe actualizar la interfaz y mostrar todos los textos en español

  Scenario: El usuario no puede cambiar el idioma debido a un error
    Given que el usuario intenta cambiar el idioma
    When el sistema presenta un fallo al cambiar el idioma
    Then el sistema debe mostrar un mensaje de error y mantener el idioma actual