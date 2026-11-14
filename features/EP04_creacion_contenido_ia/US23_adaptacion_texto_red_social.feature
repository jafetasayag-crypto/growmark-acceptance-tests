# language: es
@EP04 @US23
Característica: Adaptación del texto según red social
  Como dueño de una PYME
  Quiero que la IA adapte automáticamente la extensión y el formato del texto para Instagram, Facebook o TikTok
  Para no redactar versiones distintas manualmente

  Esquema del escenario: Adaptación de la descripción base a cada red social
    Dado que el usuario cuenta con una descripción base generada
    Cuando selecciona la pestaña "<red>"
    Entonces el sistema ajusta la longitud, los emojis y la llamada a la acción del texto para "<red>"

    Ejemplos:
      | red       |
      | Instagram |
      | Facebook  |
      | TikTok    |

  Escenario: Conservación de una versión editada manualmente
    Dado que el usuario editó manualmente el texto de la pestaña "Facebook"
    Cuando selecciona "Guardar cambios"
    Entonces el sistema conserva el texto personalizado de "Facebook"
    Y el sistema no modifica las versiones de "Instagram" y "TikTok"
