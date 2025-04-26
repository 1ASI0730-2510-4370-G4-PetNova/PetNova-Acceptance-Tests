Feature: Creación de Nuevos Medicamentos
  Como administrador, necesito poder ingresar información detallada de cada medicamento (nombre, dosis, fecha de caducidad, proveedor, etc.).

  Scenario: El administrador crea un nuevo medicamento
    Given que el administrador está en la sección de creación de medicamentos
    When completa los datos del medicamento como nombre, dosis, fecha de caducidad y proveedor
    Then el sistema debe guardar el medicamento y mostrar un mensaje confirmando la creación exitosa

  Scenario: El administrador intenta crear un medicamento con datos incompletos
    Given que el administrador está creando un nuevo medicamento
    When intenta guardar sin completar los campos obligatorios
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes

  Scenario: El administrador intenta crear un medicamento con un nombre ya registrado
    Given que el administrador está creando un nuevo medicamento
    When introduce un nombre que ya está registrado en el sistema
    Then el sistema debe mostrar un mensaje de error indicando que el nombre del medicamento ya existe