Feature: Creación de Perfil de Mascota
  Como usuario dueño de mascotas, quiero registrar un perfil para mi mascota con el fin de guardar su información en la plataforma.

  Scenario: El usuario registra un nuevo perfil para su mascota
    Given que el usuario se encuentra en la interfaz de creación de perfil de mascota
    When completa todos los campos requeridos como nombre, fecha de nacimiento, raza, género e historial médico
    Then el sistema debe permitir guardar el nuevo perfil
    And mostrar un mensaje que confirme la creación exitosa

  Scenario: El usuario omite campos obligatorios al registrar a su mascota
    Given que el usuario intenta guardar un perfil sin llenar todos los campos necesarios
    When uno o más de estos campos quedan vacíos
    Then el sistema debe mostrar un mensaje de error indicando que todos los campos requeridos deben ser completados

  Scenario: El usuario asigna un nombre repetido a una mascota
    Given que el usuario está por registrar una nueva mascota
    When introduce un nombre ya utilizado en otra mascota de su cuenta
    Then el sistema debe emitir una advertencia indicando que el nombre ya existe
    And sugerir que elija otro o lo modifique para evitar confusiones