Feature: Actualización del Historial Médico
  Como administrador o veterinario, quiero poder modificar y actualizar el historial médico de las mascotas para asegurar que los dueños cuenten con información actualizada sobre sus tratamientos y estado de salud.

  Scenario: El administrador actualiza el historial médico de una mascota
    Given que el administrador está en la sección de historial médico de una mascota
    When agrega o modifica un registro como una consulta, vacuna o tratamiento
    Then el sistema debe guardar los cambios y notificar al usuario sobre la actualización

  Scenario: El administrador intenta actualizar con datos incompletos
    Given que el administrador está actualizando el historial médico
    When intenta guardar sin completar los campos obligatorios
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes

  Scenario: El administrador intenta actualizar el historial de una mascota no registrada
    Given que el administrador está en la sección de historial médico
    When intenta actualizar el historial de una mascota que no existe
    Then el sistema debe mostrar un mensaje de error indicando que la mascota no está registrada