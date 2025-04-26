Feature: Edición de Perfiles de Clientes
  Como administrador, quiero crear perfiles de clientes para registrar su información de contacto y los detalles de sus mascotas.

  Scenario: El administrador edita el perfil de un cliente
    Given que el administrador está en la sección de edición de perfiles de clientes
    When modifica los datos del cliente como nombre, correo electrónico o detalles de sus mascotas
    Then el sistema debe guardar los cambios y mostrar un mensaje confirmando la actualización

  Scenario: El administrador intenta editar con un correo ya registrado
    Given que el administrador está editando el perfil de un cliente
    When introduce un correo electrónico que ya está registrado para otro cliente
    Then el sistema debe mostrar un mensaje de error indicando que el correo ya está en uso

  Scenario: El administrador omite campos obligatorios al editar
    Given que el administrador está editando el perfil de un cliente
    When intenta guardar sin completar todos los campos requeridos
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes