# language: es
@EP05 @US26
Característica: Vinculación de cuentas de Instagram y Facebook
  Como dueño de una PYME
  Quiero conectar mis cuentas comerciales de Instagram y Facebook en un solo panel
  Para publicar y lanzar anuncios directamente desde GrowMark

  Escenario: Vinculación exitosa desde Meta Business
    Dado que el usuario autorizó los permisos desde Meta Business
    Cuando completa la conexión
    Entonces el panel muestra las cuentas con el estado:
      | red       | estado    |
      | Instagram | Conectada |
      | Facebook  | Conectada |
    Y las cuentas quedan disponibles para publicar

  Esquema del escenario: Token de acceso caducado o revocado
    Dado que el token de acceso de "<red>" está "<situación>"
    Cuando el usuario ingresa al panel
    Entonces el sistema muestra una alerta para volver a vincular la cuenta de "<red>"

    Ejemplos:
      | red       | situación |
      | Instagram | caducado  |
      | Facebook  | revocado  |
