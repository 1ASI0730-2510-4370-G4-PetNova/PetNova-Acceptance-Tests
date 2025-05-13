Feature: Configuración de Umbrales de Alerta
  Como médico veterinario, quiero definir umbrales personalizados para que el sistema envíe notificaciones automáticas a dueños y veterinarios.

  Scenario: Creación de un umbral personalizado
    Given que el veterinario accede a la configuración de alertas
    When define un nuevo umbral como temperatura mayor a 39°C para perros
    Then el sistema debe guardar la regla
    And aplicarla a las mascotas asociadas

  Scenario: Notificación por umbral excedido
    Given que se ha configurado un umbral para actividad física menor a 30min/día
    When el dispositivo reporta un valor inferior
    Then el sistema debe enviar una notificación push y por correo al dueño y veterinario