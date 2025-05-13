Feature: Creación de Nuevos Medicamentos
  Como administrador del sistema o medico veterinario, necesito poder ingresar información detallada de cada medicamento.

  Scenario: Registro exitoso de medicamento
    Given que el administrador ingresa al módulo de registro de medicamentos
    When completa todos los campos obligatorios como nombre, dosis, fecha caducidad, proveedor y guarda
    Then el sistema debe almacenar el medicamento en la base de datos

  Scenario: Intento de registro con campos incompletos
    Given que el administrador deja vacío el campo "medicamento"
    When intenta guardar el formulario
    Then el sistema debe mostrar una alerta: "Complete todos los campos obligatorios"