# language: es
@EP05 @US30
Característica: Botón de contacto directo a WhatsApp en anuncios
  Como dueña de una pastelería
  Quiero incluir un botón directo a mi WhatsApp comercial con mensaje predeterminado en mis anuncios
  Para atender y cerrar pedidos rápidamente

  Escenario: Activación del botón con un número registrado
    Dado que el usuario registró el número de WhatsApp "987654321" en su perfil
    Y configura un anuncio orientado a ventas
    Cuando activa "Botón a WhatsApp"
    Entonces el sistema vincula el número "987654321" al anuncio
    Y el sistema genera una plantilla de mensaje inicial

  Escenario: Activación del botón sin número registrado
    Dado que el usuario no tiene un número de WhatsApp en su perfil
    Cuando activa "Botón a WhatsApp"
    Entonces el sistema solicita ingresar y validar el número
    Y el sistema no permite publicar el anuncio hasta validar el número
