Feature: Crear Historia Clínica
  Como administrador del sistema o medico veterinario, quiero crear perfiles de clientes para registrar su información de contacto y los detalles de sus mascotas.

  Scenario: Registro exitoso de nuevo cliente
    Given que el administrador accede al formulario de creación
    When completa todos los campos obligatorios como nombre, teléfono, email y guarda
    Then el sistema debe generar un ID único
    And mostrar mensaje de confirmación

  Scenario: Registro con datos incompletos
    Given que el administrador omite campos requeridos
    When intenta guardar
    Then el sistema debe marcar los campos faltantes sin crear el perfil