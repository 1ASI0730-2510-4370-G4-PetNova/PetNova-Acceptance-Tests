Feature: Historial Médico de Mascotas
  Como usuario, deseo visualizar y gestionar el historial médico de mi mascota para mantener un registro de su salud.

  Scenario: El usuario consulta el historial médico de su mascota
    Given que el usuario está en la sección de historial médico de una mascota
    When selecciona la opción para visualizar el historial
    Then el sistema debe mostrar un listado con las consultas, vacunas y tratamientos previos

  Scenario: El usuario agrega un nuevo registro al historial médico
    Given que el usuario está en la sección de historial médico de una mascota
    When añade un nuevo registro con detalles como fecha, tipo de consulta y observaciones
    Then el sistema debe guardar el registro y mostrar un mensaje confirmando la adición

  Scenario: El usuario intenta agregar un registro con datos incompletos
    Given que el usuario está intentando agregar un nuevo registro al historial médico
    When envía el formulario sin completar los campos obligatorios
    Then el sistema debe mostrar un mensaje de error solicitando completar los datos faltantes