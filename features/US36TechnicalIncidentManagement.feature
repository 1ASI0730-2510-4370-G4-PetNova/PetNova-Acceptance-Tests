Feature: Gestión de Incidencias Técnicas  
  Como usuario de Soporte Técnico, quiero registrar y gestionar incidencias técnicas reportadas  
  para resolver problemas de la plataforma.

Scenario: Registro de incidencia  
  Given que un usuario reporta un problema  
  When el soporte técnico crea un ticket de incidencia con los detalles  
  Then el sistema debe guardar la incidencia y notificar al equipo técnico

Scenario: Actualización del estado de incidencia  
  Given que el soporte técnico está trabajando en una incidencia  
  When actualiza el estado (ej: en proceso, resuelto)  
  Then el sistema debe registrar el cambio y notificar al usuario afectado
