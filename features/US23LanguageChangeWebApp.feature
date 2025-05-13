Feature: Cambio de Idioma en la App Web
  Como usuario dueño de mascota o medico veterinario, quiero tener la opción de cambiar el idioma de la aplicación web para poder utilizarla en inglés o español, de acuerdo con mi preferencia.

  Scenario: Cambio exitoso de idioma
    Given que el usuario accede a la configuración de idioma
    When selecciona "Español" o "Inglés" y guarda la preferencia
    Then la interfaz debe actualizarse inmediatamente al idioma seleccionado, incluyendo menús, botones y contenido estático

  Scenario: Persistencia de preferencia
    Given que el usuario ha cambiado el idioma anteriormente
    When cierra sesión y vuelve a ingresar
    Then el sistema debe mantener el último idioma seleccionado