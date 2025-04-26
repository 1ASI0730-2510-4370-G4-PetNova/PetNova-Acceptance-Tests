Feature: Creación de Perfiles de Clientes
  Como administrador, quiero crear perfiles de clientes para registrar su información de contacto y los detalles de sus mascotas.

  Scenario: El administrador crea un nuevo perfil de cliente
    Given que el administrador está en la sección de creación de perfiles de clientes
    When completa los datos del cliente como nombre, correo electrónico y detalles de sus mascotas
    Then el sistema debe guardar el perfil y mostrar un mensaje confirmando la creación exitosa

  Scenario: El administrador intenta crear un perfil con un correo ya registrado
    Given que el administrador está creando un perfil de cliente
    When introduce un correo electrónico que ya está registrado
    Then el sistema debe mostrar un mensaje de error indicando que el correo ya está en uso

  Scenario: El administrador omite campos obligatorios al crear el perfil
    Given que el administrador está en la sección de creación de perfiles de clientes
    When intenta guardar sin completar todos los campos requeridos
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes