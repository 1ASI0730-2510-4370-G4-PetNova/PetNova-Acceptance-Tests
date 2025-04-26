Feature: Visualización de la Sección "Why Choose Us?"
  Como visitante, quiero revisar la sección "Why Choose Us?" para comprender los beneficios y servicios que ofrece la plataforma.

  Scenario: El visitante visualiza la sección "Why Choose Us?"
    Given que el visitante está explorando la Landing Page
    When se desplaza hacia la sección "Why Choose Us?"
    Then el sistema debe mostrar una lista clara de los beneficios y razones para elegir la plataforma

  Scenario: El visitante necesita entender los beneficios de la plataforma
    Given que el visitante está en la sección "Why Choose Us?"
    When revisa cada beneficio descrito
    Then podrá comprender cómo la plataforma se destaca frente a la competencia

  Scenario: El visitante accede a la sección desde un dispositivo móvil
    Given que el visitante está explorando la Landing Page en un dispositivo móvil
    When se desplaza hacia la sección "Why Choose Us?"
    Then el sistema debe mostrar los beneficios en un formato adaptado para móviles