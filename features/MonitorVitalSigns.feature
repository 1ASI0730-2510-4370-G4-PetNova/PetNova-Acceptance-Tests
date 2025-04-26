Feature: Monitoreo de Signos Vitales
  Como dueño de mascotas o veterinario, quiero integrar dispositivos IoT para monitorear la salud de las mascotas en tiempo real.

  Scenario: El usuario monitorea los signos vitales de su mascota
    Given que el usuario tiene un dispositivo IoT configurado para su mascota
    When accede a la sección de monitoreo de signos vitales
    Then el sistema debe mostrar los datos en tiempo real como frecuencia cardíaca y temperatura

  Scenario: El dispositivo IoT no está conectado
    Given que el usuario intenta monitorear los signos vitales
    When el dispositivo IoT no está conectado o presenta fallos
    Then el sistema debe mostrar un mensaje de error indicando problemas de conexión

  Scenario: El sistema detecta un valor anormal en los signos vitales
    Given que el usuario está monitoreando los signos vitales de su mascota
    When el sistema detecta un valor fuera de los rangos normales
    Then el sistema debe enviar una alerta al usuario y sugerir contactar a un veterinario