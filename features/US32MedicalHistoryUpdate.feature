Feature: Actualización del Historial Médico
  Como administrador o veterinario, quiero modificar y actualizar el historial médico de las mascotas para asegurar información actualizada.

  Scenario: Modificación exitosa del historial médico de una mascota
    Given que soy un administrador o un veterinario
    When realizo una modificación en el historial médico de una mascota, como agregar un nuevo diagnóstico o tratamiento
    Then el sistema debe guardar los cambios
    And mostrar la información actualizada en el perfil de la mascota

  Scenario: Intento fallido de actualización por campos incompletos
    Given que soy un administrador o veterinario intentando modificar el historial médico
    When omito completar uno o más campos obligatorios
    Then el sistema debe mostrar un mensaje de error indicando que es necesario completar todos los campos requeridos

  Scenario: Revisión del historial de actualizaciones médicas
    Given que soy un administrador o veterinario
    When ingreso al historial médico de una mascota que ha sido editado anteriormente
    Then el sistema debe permitir visualizar un registro detallado de todas las modificaciones, incluyendo fechas y quién realizó cada cambio