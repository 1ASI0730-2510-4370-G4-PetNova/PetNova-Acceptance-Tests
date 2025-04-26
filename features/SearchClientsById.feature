Feature: Búsqueda de Clientes por ID
  Como administrador, quiero buscar clientes por su ID para acceder rápidamente a su información y gestionar los datos de sus mascotas.

  Scenario: El administrador busca un cliente por su ID
    Given que el administrador está en la sección de búsqueda de clientes
    When ingresa el ID de un cliente registrado
    Then el sistema debe mostrar los detalles del cliente y sus mascotas asociadas a ese ID

  Scenario: El administrador busca un ID que no existe
    Given que el administrador está en la sección de búsqueda de clientes
    When ingresa un ID que no está registrado en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que no se encontró ningún cliente con ese ID

  Scenario: El administrador no ingresa un ID válido
    Given que el administrador está intentando buscar un cliente
    When ingresa un ID en un formato incorrecto o deja el campo vacío
    Then el sistema debe mostrar un mensaje de error solicitando un ID válido