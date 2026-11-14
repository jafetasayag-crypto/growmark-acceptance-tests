# GrowMark – Acceptance Tests (Gherkin)

Repositorio de las pruebas de aceptación del producto **GrowMark** (Marketing digital con IA para PYMES), elaborado para el Capítulo IV: Validation del Trabajo Final del curso 1ASI0786 Ingeniería de Requisitos (UPC, 202620, NRC 7020).

Los archivos `.feature` están escritos en Gherkin en español (`# language: es`) y se derivan de los criterios de aceptación de las User Stories del Product Backlog.

## Estructura

| Carpeta | Épica | User Stories |
|---|---|---|
| `features/EP04_creacion_contenido_ia` | EP04 – Creación de contenido con IA | US19, US20, US21, US22, US23, US24 |
| `features/EP05_publicacion_pauta` | EP05 – Publicación y pauta guiada | US25, US26, US27, US28, US29, US30 |
| `features/EP07_atributos_calidad` | EP07 – Atributos de calidad (no funcionales) | US37, US38, US39, US40 |

Cada archivo contiene escenarios (`Escenario`), esquemas de escenario con tablas de ejemplos (`Esquema del escenario` + `Ejemplos`) y data tables en los pasos. Las etiquetas `@EPxx` y `@USxx` permiten ejecutar las pruebas por épica o por historia, por ejemplo con Cucumber: `cucumber --tags @EP04`.

## Wireframes

Los wireframes de las historias US19 y US27 se elaboraron en Figma: https://www.figma.com/design/Dqt1z47kVbn8L7Bvr0F1PT

## Equipo

- Asayag Varillas, Guershom Jafet
- Flores Espinoza, Rafael Matias
- Lizarraga Orellana, John Haziel
- Soto Rocca, Jennifer Angely
