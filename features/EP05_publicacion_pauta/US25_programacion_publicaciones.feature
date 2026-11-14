# language: es
@EP05 @US25
Característica: Programación de publicaciones
  Como dueño de una PYME
  Quiero programar mis publicaciones en Instagram y Facebook
  Para publicar con constancia sin estar pendiente cada día

  Esquema del escenario: Programación en una red vinculada
    Dado que el usuario vinculó su cuenta de "<red>"
    Y seleccionó la fecha futura "<fecha>" y la hora "<hora>"
    Cuando selecciona "Programar"
    Entonces el sistema guarda la publicación con el estado "Programada"

    Ejemplos:
      | red       | fecha      | hora  |
      | Instagram | 20/12/2026 | 19:00 |
      | Facebook  | 24/12/2026 | 12:30 |

  Escenario: Programación sin una red vinculada
    Dado que el usuario no vinculó ninguna red social
    Cuando intenta programar una publicación
    Entonces el sistema solicita vincular una cuenta de Instagram o Facebook
    Y el sistema no programa la publicación
