Feature: Monitoreo de Signos Vitales
  Como dueño de mascotas o veterinario, quiero integrar dispositivos IoT para monitorear la salud de las mascotas en tiempo real.

  Scenario: Visualización de datos en tiempo real
    Given que un dispositivo IoT está conectado al sistema
    When el dispositivo envía datos de signos vitales como frecuencia cardíaca, temperatura
    Then el sistema debe mostrarlos en un panel actualizado cada 5 segundos

  Scenario: Conexión fallida de dispositivo
    Given que el dispositivo IoT pierde conexión
    When el sistema detecta la desconexión por más de 10 segundos
    Then debe mostrar una alerta al usuario
    And registrar el evento en el historial