# language: es
@EP04 @US24
Característica: Biblioteca de plantillas y piezas guardadas
  Como dueña de un emprendimiento artesanal
  Quiero guardar mis textos y diseños generados en una biblioteca de borradores
  Para reutilizarlos en futuras promociones

  Escenario: Guardado de una pieza en la biblioteca
    Dado que el usuario generó una pieza con texto y diseño
    Cuando selecciona "Guardar en biblioteca"
    Entonces la pieza queda almacenada en su listado de borradores con los datos:
      | dato              |
      | Texto             |
      | Diseño            |
      | Fecha de guardado |

  Escenario: Duplicación de un borrador para una nueva publicación
    Dado que el usuario abrió un borrador guardado en su biblioteca
    Cuando selecciona "Duplicar para nueva publicación"
    Entonces el sistema crea una copia editable lista para programar
    Y el borrador original permanece sin cambios en la biblioteca
