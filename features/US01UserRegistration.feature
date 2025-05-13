Feature: Registro de Usuario
  Como usuario externo, quiero crear una cuenta en la plataforma para acceder a las funciones que ofrece el sistema.

  Scenario: El usuario desea crear una nueva cuenta en la plataforma
    Given que el usuario se encuentra en la sección de registro
    When completa correctamente todos los datos solicitados como nombre completo, número telefónico, correo electrónico, dirección y contraseña
    Then el sistema debe permitirle finalizar el registro
    And mostrar un mensaje de confirmación de cuenta creada

  Scenario: El usuario utiliza un correo previamente registrado
    Given que el usuario intenta registrarse con una dirección de correo que ya está vinculada a otra cuenta
    When introduce ese correo y envía el formulario de registro
    Then el sistema debe emitir un mensaje de advertencia indicando que el correo ya ha sido utilizado

  Scenario: El usuario omite campos obligatorios en el formulario
    Given que el usuario intenta registrarse sin proporcionar toda la información requerida
    When presiona el botón de registro sin haber completado todos los campos necesarios
    Then el sistema debe desplegar un mensaje de error solicitando completar los campos faltantes