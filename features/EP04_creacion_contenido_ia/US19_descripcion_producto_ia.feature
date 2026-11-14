# language: es
@EP04 @US19
Característica: Descripción de producto con IA
  Como dueño de una PYME
  Quiero que la IA redacte la descripción de mi producto a partir de una foto y datos básicos
  Para ahorrar el tiempo que invierto redactando

  Antecedentes:
    Dado que el usuario inició sesión en GrowMark
    Y se encuentra en la pantalla "Nueva publicación"

  Esquema del escenario: Generación de propuestas con datos completos
    Dado que el usuario cargó la foto "<foto>"
    Y ingresó el nombre "<nombre>" y el precio "<precio>"
    Cuando selecciona "Generar texto"
    Entonces el sistema muestra 3 propuestas de descripción en español
    Y cada propuesta tiene como máximo 2200 caracteres

    Ejemplos:
      | foto                | nombre                 | precio   |
      | polera_negra.jpg    | Polera oversize negra  | S/ 59.90 |
      | vela_lavanda.jpg    | Vela aromática lavanda | S/ 25.00 |
      | torta_chocolate.jpg | Torta de chocolate     | S/ 80.00 |

  Escenario: Generación sin nombre del producto
    Dado que el usuario cargó la foto del producto
    Y ingresó el precio "S/ 59.90"
    Y no ingresó el nombre del producto
    Cuando selecciona "Generar texto"
    Entonces el sistema resalta el campo "Nombre del producto"
    Y el sistema no genera propuestas de descripción
