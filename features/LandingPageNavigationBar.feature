Feature: Barra de Navegación en la Landing Page
  Como visitante, quiero utilizar la barra de navegación para acceder de manera fácil y rápida a las distintas secciones de la plataforma.

  Scenario: El visitante navega a una sección específica
    Given que el visitante está en la Landing Page
    When selecciona una opción de la barra de navegación como "Inicio" o "Servicios"
    Then el sistema debe redirigirlo a la sección correspondiente sin errores

  Scenario: El visitante accede a la barra de navegación desde un dispositivo móvil
    Given que el visitante está utilizando la Landing Page desde un dispositivo móvil
    When interactúa con la barra de navegación
    Then el sistema debe mostrar un menú desplegable adaptado para dispositivos móviles

  Scenario: El visitante intenta acceder a una sección que requiere autenticación
    Given que el visitante está navegando en la Landing Page
    When selecciona una sección que requiere inicio de sesión como "Citas"
    Then el sistema debe redirigirlo a la página de inicio de sesión