Feature: Gestión de Perfiles de Mascotas
  Como usuario, deseo gestionar los perfiles de mis mascotas para mantener su información actualizada.

  Scenario: El usuario actualiza el perfil de una mascota
    Given que el usuario está en la sección de gestión de perfiles de mascotas
    When edita la información de una mascota como raza, fecha de nacimiento o historial médico
    Then el sistema debe guardar los cambios y mostrar un mensaje confirmando la actualización exitosa

  Scenario: El usuario elimina el perfil de una mascota
    Given que el usuario está en la sección de gestión de perfiles de mascotas
    When selecciona la opción para eliminar un perfil de mascota
    Then el sistema debe solicitar confirmación y, al aceptarla, eliminar el perfil permanentemente mostrando un mensaje de confirmación

  Scenario: El usuario intenta actualizar un perfil con datos incompletos
    Given que el usuario está editando el perfil de una mascota
    When intenta guardar los cambios sin completar todos los campos obligatorios
    Then el sistema debe mostrar un mensaje de error indicando que debe completar los campos faltantes