Feature: Gestión de Perfiles de Usuarios
  Como administrador del sistema, quiero administrar los perfiles de los usuarios para asegurar que su información y permisos estén siempre actualizados.

  Scenario: El administrador modifica los datos de un usuario
    Given que el administrador se encuentra en la sección destinada a la administración de usuarios
    When accede al perfil de un usuario y actualiza su información personal como nombre, correo electrónico, número telefónico y dirección
    Then el sistema debe guardar los cambios realizados
    And mostrar un mensaje que confirme la actualización exitosa

  Scenario: El administrador inhabilita una cuenta de usuario
    Given que el administrador necesita suspender temporalmente el acceso de un usuario
    When selecciona la opción de desactivación en el listado de usuarios
    Then el sistema debe marcar la cuenta como inactiva
    And impedir que el usuario acceda hasta que sea reactivado

  Scenario: El administrador elimina un usuario del sistema
    Given que el administrador está realizando tareas de mantenimiento en los perfiles de usuario
    When elige la opción de eliminar un perfil específico
    Then el sistema debe mostrar una advertencia de confirmación
    And borrar de forma definitiva dicho perfil y toda su información relacionada