Feature: Envío de Mensajes de Contacto
  Como visitante, quiero enviar un mensaje de contacto a través de la página de aterrizaje para poder comunicarme con el equipo de PetNova.

  Scenario: El visitante envía un mensaje de contacto
    Given que el visitante está en la sección de contacto de la Landing Page
    When completa el formulario con su nombre, correo y mensaje
    Then el sistema debe enviar el mensaje y mostrar una confirmación de que el mensaje fue recibido

  Scenario: El visitante omite campos obligatorios en el formulario
    Given que el visitante está en la sección de contacto
    When intenta enviar el formulario sin completar todos los campos requeridos
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes

  Scenario: El visitante ingresa un correo inválido
    Given que el visitante está completando el formulario de contacto
    When ingresa un correo electrónico en un formato incorrecto
    Then el sistema debe mostrar un mensaje de error indicando que el correo no es válido