Feature: Búsqueda de Mascotas por ID
  Como administrador, quiero buscar mascotas utilizando su ID para acceder de forma rápida a su información en el sistema.

  Scenario: El administrador busca una mascota por su ID
    Given que el administrador está en la sección de búsqueda de mascotas
    When ingresa el ID de una mascota registrada
    Then el sistema debe mostrar los detalles de la mascota asociada a ese ID

  Scenario: El administrador busca un ID que no existe
    Given que el administrador está en la sección de búsqueda de mascotas
    When ingresa un ID que no está registrado en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que no se encontró ninguna mascota con ese ID

  Scenario: El administrador no ingresa un ID válido
    Given que el administrador está intentando buscar una mascota
    When ingresa un ID en un formato incorrecto o deja el campo vacío
    Then el sistema debe mostrar un mensaje de error solicitando un ID válido