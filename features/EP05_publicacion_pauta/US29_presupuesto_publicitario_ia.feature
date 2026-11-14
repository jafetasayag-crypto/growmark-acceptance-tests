# language: es
@EP05 @US29
Característica: Recomendación de presupuesto publicitario con IA
  Como dueña de un emprendimiento
  Quiero que la IA sugiera la distribución óptima de mi presupuesto diario y duración del anuncio
  Para no gastar de más sin estrategia

  Esquema del escenario: Recomendación de distribución del presupuesto
    Dado que el usuario ingresó un presupuesto total de "<presupuesto>"
    Cuando solicita la sugerencia de la IA
    Entonces el sistema recomienda la cantidad de días y el monto diario del anuncio
    Y el sistema muestra el alcance proyectado

    Ejemplos:
      | presupuesto |
      | S/ 100      |
      | S/ 250      |

  Esquema del escenario: Recálculo al modificar la duración
    Dado que el usuario tiene un presupuesto total de "S/ 100"
    Cuando cambia la duración del anuncio a "<días>" días
    Entonces el sistema muestra un gasto diario de "<gasto diario>"
    Y el sistema actualiza el alcance proyectado

    Ejemplos:
      | días | gasto diario |
      | 5    | S/ 20.00     |
      | 10   | S/ 10.00     |
