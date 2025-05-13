Feature: Búsqueda de Mascotas por ID
  Como administrador del sistema o medico veterinario, quiero buscar mascotas utilizando su ID para acceder de forma rápida a su información en el sistema.

  Scenario: Búsqueda exitosa por ID
    Given que el administrador ingresa el ID único de una mascota
    When ejecuta la búsqueda
    Then el sistema debe mostrar el perfil completo de la mascota asociada a ese ID

  Scenario: Búsqueda con ID inexistente
    Given que el administrador ingresa un ID no registrado
    When ejecuta la búsqueda
    Then el sistema debe mostrar un mensaje claro: "No se encontró ninguna mascota con este ID"