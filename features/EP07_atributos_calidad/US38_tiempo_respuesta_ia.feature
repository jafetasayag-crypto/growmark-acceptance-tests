# language: es
@EP07 @US38 @no_funcional
Característica: Tiempo de respuesta de la IA
  Como emprendedor
  Quiero que la IA genere los textos en pocos segundos
  Para no perder tiempo esperando

  Escenario: Tiempo de respuesta dentro del umbral
    Dado que se ejecutan 100 solicitudes de "Generar texto" con datos completos
    Cuando se mide el tiempo de respuesta de cada solicitud
    Entonces al menos 95 solicitudes muestran sus propuestas en 10 segundos o menos

  Escenario: Generación que supera el umbral
    Dado que el usuario solicitó "Generar texto"
    Y la generación supera los 10 segundos
    Cuando el usuario espera la respuesta
    Entonces el sistema muestra un indicador de progreso
    Y el sistema muestra un mensaje de espera
