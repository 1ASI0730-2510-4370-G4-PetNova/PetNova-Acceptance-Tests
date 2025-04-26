Feature: Configuración de Umbrales de Alerta
  Como médico veterinario, quiero definir umbrales personalizados (ej. fiebre >39°C) para que el sistema envíe notificaciones automáticas a dueños y veterinarios.

  Scenario: El veterinario configura un umbral de alerta
    Given que el veterinario está en la sección de configuración de umbrales
    When define un umbral como fiebre mayor a 39°C para una mascota
    Then el sistema debe guardar la configuración y activar las notificaciones automáticas

  Scenario: El sistema detecta un valor que supera el umbral configurado
    Given que un umbral de fiebre mayor a 39°C está configurado
    When el sistema detecta una temperatura de 40°C en una mascota
    Then el sistema debe enviar una notificación automática al dueño y al veterinario

  Scenario: El veterinario intenta configurar un umbral con valores inválidos
    Given que el veterinario está configurando un umbral de alerta
    When introduce un valor no válido como una temperatura negativa
    Then el sistema debe mostrar un mensaje de error solicitando un valor válido