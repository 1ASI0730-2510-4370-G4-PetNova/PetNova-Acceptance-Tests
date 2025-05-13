Feature: Historial de Medicamentos
  Como médico veterinario, necesito acceder al historial completo de tratamientos y vacunas de un animal en específico.

  Scenario: Consulta exitosa del historial
    Given que el veterinario busca el animal por nombre de la mascota o del dueño
    When accede a la pestaña "Historial de medicamentos"
    Then el sistema debe mostrar lista cronológica con vacunas, tratamientos, fechas, dosis

  Scenario: Mascota sin historial registrado
    Given que la mascota no tiene medicamentos registrados
    When el veterinario accede al historial
    Then el sistema debe mostrar un mensaje: "No hay registros médicos"