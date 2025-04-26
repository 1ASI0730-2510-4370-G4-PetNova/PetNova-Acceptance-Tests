Feature: Gestión de Perfiles de Mascotas
  Como administrador, quiero administrar los perfiles de las mascotas para garantizar que su información esté correctamente registrada y actualizada.

  Scenario: El administrador actualiza el perfil de una mascota
    Given que el administrador está en la sección de gestión de perfiles de mascotas
    When modifica los datos de una mascota como nombre, raza o historial médico
    Then el sistema debe guardar los cambios y mostrar un mensaje confirmando la actualización

  Scenario: El administrador elimina el perfil de una mascota
    Given que el administrador está en la sección de gestión de perfiles de mascotas
    When selecciona la opción para eliminar un perfil
    Then el sistema debe eliminar el perfil tras una confirmación y mostrar un mensaje de éxito

  Scenario: El administrador intenta actualizar con datos incompletos
    Given que el administrador está editando el perfil de una mascota
    When intenta guardar sin completar los campos obligatorios
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes