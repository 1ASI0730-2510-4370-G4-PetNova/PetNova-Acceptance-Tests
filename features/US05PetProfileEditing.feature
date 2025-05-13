Feature: Edición de Perfil de Mascota
  Como usuario dueño de mascota, quiero modificar el perfil de mi mascota para mantener su información actualizada cuando sea necesario.

  Scenario: El usuario actualiza la información del perfil de su mascota
    Given que el usuario se encuentra en la sección de edición del perfil de su mascota
    When modifica datos del perfil, como el historial clínico o la raza
    Then el sistema debe permitir guardar las actualizaciones realizadas
    And mostrar un mensaje confirmando que los cambios se han aplicado correctamente

  Scenario: El usuario intenta guardar el perfil sin completar la información obligatoria
    Given que el usuario está realizando modificaciones en el perfil de su mascota
    When intenta guardar los cambios dejando uno o más campos obligatorios vacíos
    Then el sistema debe desplegar un mensaje de error indicando que es necesario completar toda la información requerida