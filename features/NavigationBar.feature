Feature: Barra de Navegación
  Como usuario, quiero una barra de navegación clara y accesible para moverme fácilmente entre las secciones de la plataforma.

  Scenario: El usuario navega a una sección específica
    Given que el usuario está en cualquier página de la plataforma
    When selecciona una opción de la barra de navegación como "Inicio", "Foro" o "Citas"
    Then el sistema debe redirigirlo a la sección correspondiente sin errores

  Scenario: El usuario accede a la barra de navegación desde un dispositivo móvil
    Given que el usuario está utilizando la plataforma desde un dispositivo móvil
    When interactúa con la barra de navegación
    Then el sistema debe mostrar un menú desplegable adaptado para dispositivos móviles

  Scenario: El usuario intenta acceder a una sección no disponible para su rol
    Given que el usuario está navegando en la plataforma
    When intenta acceder a una sección restringida como "Moderación" sin permisos de administrador
    Then el sistema debe mostrar un mensaje de error indicando que no tiene acceso a esa sección