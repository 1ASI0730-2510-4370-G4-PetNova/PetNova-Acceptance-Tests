Feature: Gestión de Notificaciones
  Como administrador, quiero gestionar el envío de notificaciones para asegurarme de que los usuarios reciban la información importante de manera oportuna.

  Scenario: El administrador revisa el estado de las notificaciones
    Given que el administrador está en la sección de gestión de notificaciones
    When solicita ver el historial de notificaciones enviadas
    Then el sistema debe mostrar un listado con las notificaciones, su estado y los usuarios destinatarios

  Scenario: El administrador reenvía una notificación fallida
    Given que el administrador está en la sección de gestión de notificaciones
    When selecciona una notificación que falló en su envío y elige reenviarla
    Then el sistema debe intentar enviar la notificación nuevamente y actualizar su estado

  Scenario: El administrador desactiva notificaciones para un usuario
    Given que el administrador está gestionando las preferencias de notificaciones
    When desactiva las notificaciones para un usuario específico
    Then el sistema debe respetar esta configuración y no enviar notificaciones a ese usuario