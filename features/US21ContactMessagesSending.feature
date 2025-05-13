Feature: Envío de Mensajes de Contacto
  Como visitante, quiero enviar un mensaje de contacto a través de la página de aterrizaje para poder comunicarme con el equipo de PetNova.

  Scenario: Envío exitoso
    Given que el visitante completa el formulario
    When hace clic en "Enviar" con datos válidos
    Then debe mostrar confirmación
    And vaciar los campos

  Scenario: Validación de campos
    Given que el visitante omite campos requeridos
    When intenta enviar
    Then debe marcar errores sin enviar el formulario