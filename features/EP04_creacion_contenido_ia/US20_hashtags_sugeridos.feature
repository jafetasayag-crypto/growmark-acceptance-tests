# language: es
@EP04 @US20
Característica: Hashtags sugeridos
  Como emprendedor de moda urbana
  Quiero que la IA sugiera hashtags para mi publicación
  Para llegar a más personas interesadas en mi marca

  Esquema del escenario: Sugerencia de hashtags para una descripción generada
    Dado que el usuario tiene una descripción generada para el producto "<producto>"
    Cuando selecciona "Sugerir hashtags"
    Entonces el sistema muestra entre 5 y 15 hashtags relacionados con el rubro "<rubro>"

    Ejemplos:
      | producto               | rubro      |
      | Polera oversize negra  | Moda       |
      | Vela aromática lavanda | Decoración |
      | Torta de chocolate     | Repostería |

  Escenario: Eliminación de un hashtag sugerido
    Dado que el sistema muestra los hashtags sugeridos:
      | hashtag      |
      | #modaurbana  |
      | #streetwear  |
      | #oversize    |
      | #hechoenperu |
      | #polera      |
    Cuando el usuario elimina el hashtag "#polera"
    Entonces el sistema actualiza la publicación sin el hashtag "#polera"
    Y la publicación conserva los demás hashtags sugeridos
