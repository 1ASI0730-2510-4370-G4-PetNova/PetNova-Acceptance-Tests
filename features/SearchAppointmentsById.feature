Feature: Búsqueda de Citas por ID
  Como administrador, quiero buscar citas utilizando su ID para acceder rápidamente a los detalles de la cita.

  Scenario: El administrador busca una cita por su ID
    Given que el administrador está en la sección de búsqueda de citas
    When ingresa el ID de una cita registrada
    Then el sistema debe mostrar los detalles de la cita asociada a ese ID

  Scenario: El administrador busca un ID de cita que no existe
    Given que el administrador está en la sección de búsqueda de citas
    When ingresa un ID que no está registrado en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que no se encontró ninguna cita con ese ID

  Scenario: El administrador no ingresa un ID válido
    Given que el administrador está intentando buscar una cita
    When ingresa un ID en un formato incorrecto o deja el campo vacío
    Then el sistema debe mostrar un mensaje de error solicitando un ID válido