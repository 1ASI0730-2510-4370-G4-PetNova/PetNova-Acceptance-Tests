Feature: Búsqueda de Citas por ID
  Como administrador del sistema o medico veterinario, quiero buscar citas utilizando su ID para acceder rápidamente a los detalles de la cita.

  Scenario: El administrador localiza una cita mediante su ID
    Given que el administrador se encuentra en la sección de gestión de citas
    When ingresa el ID de una cita en el campo de búsqueda
    Then el sistema debe mostrar la cita correspondiente al ID ingresado

  Scenario: El administrador ingresa un ID incorrecto
    Given que el administrador está buscando una cita a través de su ID
    When introduce un ID que no corresponde a ninguna cita en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que no se ha encontrado ninguna cita con ese ID