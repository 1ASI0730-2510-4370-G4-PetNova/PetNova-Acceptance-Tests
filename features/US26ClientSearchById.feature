Feature: Búsqueda de Clientes por ID
  Como administrador del sistema o medico veterinario, quiero buscar clientes por su ID para acceder rápidamente a su información y gestionar los datos de sus mascotas.

  Scenario: Búsqueda exacta por ID
    Given que el administrador ingresa un ID completo
    When ejecuta la búsqueda
    Then debe mostrar solo el perfil coincidente con botones de acción como editar/eliminar

  Scenario: Búsqueda parcial con sugerencias
    Given que el administrador escribe un ID parcial
    When el sistema está procesando
    Then debe mostrar lista desplegable con máximo 5 clientes que coincidan parcialmente