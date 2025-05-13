Feature: Edición de Perfiles de Clientes
  Como administrador del sistema o medico veterinario, quiero editar perfiles de clientes para registrar su información de contacto y los detalles de sus mascotas.

  Scenario: Actualización de información básica
    Given que el administrador selecciona un cliente existente
    When modifica datos como dirección o teléfono y guarda
    Then el sistema debe registrar la fecha/hora de modificación
    And mostrar confirmación

  Scenario: Adición de nueva mascota
    Given que el administrador edita un perfil
    When agrega una nueva mascota con datos completos
    Then debe vincularla automáticamente al cliente sin borrar mascotas existentes