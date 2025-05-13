Feature: Visualización de la Sección "Why Choose Us?"
  Como visitante, quiero revisar la sección 'Why Choose Us?' para comprender los beneficios y servicios que ofrece la plataforma.

  Scenario: Visualización de beneficios
    Given que el visitante navega a "Why Choose Us?"
    When la página carga
    Then debe mostrar al menos 3 beneficios principales con iconos descriptivos

  Scenario: Interacción con elementos
    Given que el visitante pasa el cursor sobre un beneficio
    When interactúa con él
    Then debe mostrar un efecto visual