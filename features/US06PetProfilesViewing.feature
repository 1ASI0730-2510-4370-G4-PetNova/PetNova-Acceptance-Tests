Feature: Visualización de Perfiles de Mascotas
  Como usuario dueño de mascota, quiero acceder a los perfiles de mis mascotas para consultar la información que he registrado sobre ellas.

  Scenario: Acceso al perfil de mascota
    Given que el usuario ha iniciado sesión en el sistema
    When selecciona una mascota de su lista de mascotas registradas
    Then el sistema debe mostrar toda la información registrada como nombre, especie, raza, historial médico

  Scenario: Visualización de historial médico
    Given que el usuario accede al perfil de su mascota
    When navega a la sección de historial médico
    Then el sistema debe mostrar un listado cronológico de consultas, vacunas y tratamientos