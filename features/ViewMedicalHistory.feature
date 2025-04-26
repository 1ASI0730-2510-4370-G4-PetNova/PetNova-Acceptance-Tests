Feature: Visualización del Historial Médico
  Como usuario, quiero acceder al historial médico de mi mascota para poder consultar su estado de salud y los tratamientos que ha recibido anteriormente.

  Scenario: El usuario visualiza el historial médico de su mascota
    Given que el usuario está en la sección de historial médico de su mascota
    When selecciona la opción para visualizar el historial
    Then el sistema debe mostrar un listado con las consultas, vacunas y tratamientos previos

  Scenario: El usuario no tiene historial médico registrado para su mascota
    Given que el usuario accede a la sección de historial médico
    When la mascota no tiene historial médico registrado
    Then el sistema debe mostrar un mensaje indicando que no hay registros disponibles

  Scenario: El usuario intenta visualizar el historial de una mascota no registrada
    Given que el usuario está en la sección de historial médico
    When intenta consultar el historial de una mascota que no está registrada
    Then el sistema debe mostrar un mensaje de error indicando que la mascota no existe