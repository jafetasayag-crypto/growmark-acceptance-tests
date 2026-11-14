# language: es
@EP05 @US27
Característica: Anuncio guiado con segmentación sugerida
  Como dueña de un emprendimiento
  Quiero crear un anuncio paso a paso con la segmentación sugerida por la IA
  Para que mi publicidad llegue a personas interesadas en mis productos

  Escenario: Sugerencia de segmentación al crear un anuncio
    Dado que el usuario seleccionó una publicación
    Cuando inicia "Crear anuncio"
    Entonces el sistema sugiere la segmentación:
      | criterio  |
      | Intereses |
      | Ubicación |
    Y el sistema muestra el alcance estimado del anuncio

  Esquema del escenario: Validación del presupuesto mínimo
    Dado que el usuario se encuentra en el paso "Presupuesto" del anuncio
    Cuando ingresa un presupuesto de "<monto>"
    Y selecciona "Siguiente"
    Entonces el sistema <resultado>

    Ejemplos:
      | monto    | resultado                                         |
      | S/ 5.00  | muestra el error "El presupuesto mínimo es S/ 10" |
      | S/ 9.99  | muestra el error "El presupuesto mínimo es S/ 10" |
      | S/ 10.00 | avanza al siguiente paso del anuncio              |
