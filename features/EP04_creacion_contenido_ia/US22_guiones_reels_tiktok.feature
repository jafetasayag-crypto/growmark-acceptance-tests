# language: es
@EP04 @US22
Característica: Guiones cortos para Reels y TikTok con IA
  Como emprendedor de moda urbana
  Quiero que la IA genere guiones breves paso a paso para videos cortos de mis productos
  Para grabar contenido dinámico en menos tiempo

  Esquema del escenario: Generación de un guion para video corto
    Dado que el usuario seleccionó el producto "<producto>"
    Y seleccionó el formato "Reel/TikTok"
    Cuando solicita "Generar guion"
    Entonces la IA muestra un guion con una duración entre 15 y 30 segundos
    Y el guion contiene las secciones:
      | sección             |
      | Gancho inicial      |
      | Demostración        |
      | Llamado a la acción |

    Ejemplos:
      | producto                |
      | Polera oversize negra   |
      | Casaca cortaviento gris |

  Escenario: Generación de una nueva versión del guion
    Dado que el sistema muestra un guion generado para el producto "Polera oversize negra"
    Cuando el usuario selecciona "Nueva versión"
    Entonces el sistema genera una variante del guion
    Y la variante conserva el nombre y el precio del producto
