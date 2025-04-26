Feature: Edición de Perfil de Mascota
  Como usuario, quiero modificar el perfil de mi mascota para mantener su información actualizada cuando sea necesario.

  Scenario: El usuario edita el perfil de su mascota
    Given que el usuario está en la sección de edición de perfil de una mascota
    When modifica los datos como nombre, raza, fecha de nacimiento o historial médico
    Then el sistema debe guardar los cambios y mostrar un mensaje confirmando la actualización

  Scenario: El usuario intenta editar sin completar los campos obligatorios
    Given que el usuario está editando el perfil de una mascota
    When intenta guardar sin completar todos los campos requeridos
    Then el sistema debe mostrar un mensaje de error indicando que debe completar los datos faltantes

  Scenario: El usuario asigna un nombre ya existente al editar
    Given que el usuario está editando el perfil de una mascota
    When introduce un nombre que ya está registrado para otra mascota de su cuenta
    Then el sistema debe mostrar un mensaje de advertencia sugiriendo elegir otro nombre