# language: es
@EP04 @US21
Característica: Diseños con identidad de marca
  Como dueña de un emprendimiento artesanal
  Quiero generar diseños para mis publicaciones con mi logo y mis colores
  Para que mis redes se vean profesionales

  Escenario: Creación de diseños con logo y colores registrados
    Dado que el usuario registró en su perfil de marca:
      | elemento         | valor             |
      | Logo             | logo_lombre.png   |
      | Color primario   | #6B4E9B           |
      | Color secundario | #F2E8DC           |
    Cuando selecciona "Crear diseño"
    Entonces el sistema muestra 3 plantillas de diseño
    Y cada plantilla aplica el logo y los colores registrados

  Escenario: Creación de diseños sin logo registrado
    Dado que el usuario registró los colores de su marca
    Y no registró un logo
    Cuando selecciona "Crear diseño"
    Entonces el sistema genera las plantillas de diseño con los colores registrados
