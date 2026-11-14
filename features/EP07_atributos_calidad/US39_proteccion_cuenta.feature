# language: es
@EP07 @US39 @no_funcional
Característica: Protección de la cuenta
  Como dueño de una PYME
  Quiero que mi cuenta esté protegida
  Para que nadie publique o gaste en anuncios en mi nombre

  Escenario: Bloqueo tras intentos fallidos
    Dado que se registraron los siguientes intentos de inicio de sesión con contraseña incorrecta:
      | intento | resultado |
      | 1       | fallido   |
      | 2       | fallido   |
      | 3       | fallido   |
      | 4       | fallido   |
      | 5       | fallido   |
    Cuando se realiza el sexto intento de inicio de sesión
    Entonces el sistema bloquea el acceso a la cuenta por 15 minutos
    Y el sistema notifica el bloqueo al correo del usuario

  Escenario: Almacenamiento cifrado de la contraseña
    Dado que el usuario ingresó una nueva contraseña válida
    Cuando selecciona "Guardar"
    Entonces el sistema almacena la contraseña cifrada con un hash
    Y la contraseña no se almacena en texto plano
