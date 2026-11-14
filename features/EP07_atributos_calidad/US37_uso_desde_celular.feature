# language: es
@EP07 @US37 @no_funcional
Característica: Uso desde el celular
  Como dueña de una pastelería
  Quiero usar GrowMark desde mi celular
  Para gestionar mi publicidad mientras atiendo mi negocio

  Esquema del escenario: Adaptación de pantallas a 360 px
    Dado que el usuario accede desde un celular con una pantalla de 360 px de ancho
    Cuando abre la pantalla "<pantalla>"
    Entonces el sistema adapta el contenido sin desplazamiento horizontal

    Ejemplos:
      | pantalla          |
      | Inicio            |
      | Nueva publicación |
      | Crear anuncio     |
      | Resultados        |

  Esquema del escenario: Mismas funciones en navegadores móviles
    Dado que el usuario usa el navegador "<navegador>"
    Cuando crea una publicación
    Entonces el sistema ofrece las mismas funciones que en la versión de escritorio:
      | función           |
      | Generar texto     |
      | Sugerir hashtags  |
      | Crear diseño      |
      | Programar         |

    Ejemplos:
      | navegador     |
      | Chrome móvil  |
      | Safari móvil  |
