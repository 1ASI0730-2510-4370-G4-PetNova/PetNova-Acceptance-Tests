Feature: Visualización de Perfiles de Mascotas
  Como usuario, quiero acceder a los perfiles de mis mascotas para consultar la información que he registrado sobre ellas.

  Scenario: El usuario visualiza el perfil de una mascota
    Given que el usuario está en la sección de perfiles de mascotas
    When selecciona una mascota específica para ver su información
    Then el sistema debe mostrar los detalles del perfil como nombre, raza, fecha de nacimiento y historial médico

  Scenario: El usuario no tiene mascotas registradas
    Given que el usuario accede a la sección de perfiles de mascotas
    When no hay mascotas registradas en su cuenta
    Then el sistema debe mostrar un mensaje indicando que no hay perfiles de mascotas disponibles

  Scenario: El usuario intenta acceder a un perfil inexistente
    Given que el usuario está en la sección de perfiles de mascotas
    When intenta visualizar un perfil que ha sido eliminado
    Then el sistema debe mostrar un mensaje de error indicando que el perfil no existe