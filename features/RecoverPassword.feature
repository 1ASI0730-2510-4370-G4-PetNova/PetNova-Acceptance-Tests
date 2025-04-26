Feature: Recuperación de Contraseña
  Como usuario, deseo recuperar mi contraseña en caso de olvidarla para no perder el acceso a mi cuenta.

  Scenario: El usuario desea restablecer su contraseña
    Given que el usuario ha olvidado su contraseña y accede a la sección de recuperación
    When introduce su correo electrónico registrado y solicita restablecerla
    Then el sistema debe enviar un mensaje al correo con un enlace para crear una nueva contraseña

  Scenario: El usuario proporciona un correo que no está registrado
    Given que el usuario intenta recuperar el acceso usando un correo que no existe en la base de datos
    When envía el formulario con dicho correo
    Then el sistema debe mostrar una notificación de error indicando que no se encontró ninguna cuenta con ese correo

  Scenario: El usuario no recibe el mensaje de recuperación
    Given que el usuario ha solicitado recuperar su contraseña
    When han transcurrido más de 10 minutos sin recibir el correo de restablecimiento
    Then el sistema debe ofrecerle la opción de reenviar el correo o contactar al soporte técnico