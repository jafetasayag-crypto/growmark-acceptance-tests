# language: es
@EP05 @US28
Característica: Anuncio cerca de la zona de entrega
  Como dueña de una pastelería
  Quiero dirigir mis anuncios a un radio cercano a mi zona de entrega
  Para recibir pedidos que sí puedo atender

  Antecedentes:
    Dado que el usuario registró la dirección de su negocio

  Esquema del escenario: Radio de alcance permitido
    Cuando selecciona un radio de "<radio>" km
    Entonces el sistema muestra en el mapa el área de "<radio>" km alrededor de la dirección registrada

    Ejemplos:
      | radio |
      | 5     |
      | 25    |

  Esquema del escenario: Radio de alcance mayor al máximo
    Cuando ingresa un radio de "<radio>" km
    Y selecciona "Aplicar"
    Entonces el sistema indica que el radio máximo es 25 km
    Y el sistema no aplica el radio ingresado

    Ejemplos:
      | radio |
      | 26    |
      | 40    |
