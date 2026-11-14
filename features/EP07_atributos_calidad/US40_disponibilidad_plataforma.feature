# language: es
@EP07 @US40 @no_funcional
Característica: Disponibilidad de la plataforma
  Como emprendedor
  Quiero que la plataforma esté disponible cuando la necesito
  Para publicar en los horarios de mayor actividad de mis clientes

  Esquema del escenario: Medición de la disponibilidad mensual
    Dado que el sistema está en producción durante un mes de 30 días
    Y estuvo fuera de servicio "<minutos caídos>" minutos
    Cuando se mide la disponibilidad a fin de mes
    Entonces la disponibilidad es "<disponibilidad>"
    Y el resultado de la medición es "<resultado>"

    Ejemplos:
      | minutos caídos | disponibilidad | resultado  |
      | 120            | 99.72 %        | Cumple     |
      | 216            | 99.50 %        | Cumple     |
      | 300            | 99.31 %        | No cumple  |

  Escenario: Aviso de mantenimiento programado
    Dado que hay un mantenimiento programado
    Cuando faltan 24 horas para el mantenimiento
    Entonces el sistema notifica a los usuarios la fecha y la duración del mantenimiento
