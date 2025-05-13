Feature: Barra de Navegación en la Landing Page
  Como visitante, quiero utilizar la barra de navegación para acceder de manera fácil y rápida a las distintas secciones de la plataforma.

  Scenario: Navegación a secciones principales
    Given que el visitante está en la landing page
    When hace clic en un elemento de la barra de navegación
    Then el sistema debe redirigir suavemente a la sección correspondiente

  Scenario: Funcionamiento en dispositivos móviles
    Given que el visitante accede desde un móvil
    When despliega el menú hamburguesa
    Then debe mostrar todas las opciones de navegación de forma legible