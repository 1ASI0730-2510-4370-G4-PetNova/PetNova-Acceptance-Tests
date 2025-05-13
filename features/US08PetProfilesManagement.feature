Feature: Gestión de Perfiles de Mascotas
  Como administrador del sistema o medico veterinario, quiero administrar los perfiles de las mascotas para garantizar que su información esté correctamente registrada y actualizada.

  Scenario: Actualización de información básica
    Given que el administrador selecciona una mascota
    When modifica datos como peso o condición médica
    Then el sistema debe guardar los cambios
    And mostrar un mensaje de confirmación

  Scenario: Eliminación de perfil
    Given que el administrador elige eliminar un perfil
    When confirma la acción
    Then el sistema debe borrar el perfil
    And mostrar un mensaje: "Perfil eliminado correctamente"