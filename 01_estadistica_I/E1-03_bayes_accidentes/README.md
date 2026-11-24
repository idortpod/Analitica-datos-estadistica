# E1-03 · Teorema de Bayes con accidentes de tránsito (Laboratorio 2)

**Curso:** Estadística I · **Tema:** probabilidad condicional y teorema de Bayes · **Duración:** 1 sesión + trabajo autónomo
**Datos:** [Accidentes de tránsito ocurridos en Bucaramanga](https://www.datos.gov.co/Transporte/3-Accidentes-de-Transito-ocurridos-en-el-Municipio/7cci-nqqb) · **Herramienta:** Python en Google Colab

## Propósito

El estudiante define eventos a partir de las columnas de una base real (gravedad, horario, actores viales, barrio), estima probabilidades simples y condicionales con frecuencias relativas, aplica el teorema de Bayes y lo verifica con el cálculo directo. Un simulador interactivo muestra cómo cambia la probabilidad posterior al mover las probabilidades de entrada.

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E1-03_bayes_accidentes.ipynb` | Estudiante: ejemplo guiado P(heridos \| nocturno), actividad con celdas para completar y preguntas de análisis |
| `estudiante/guia_laboratorio_2_bayes.pdf` | Estudiante: guía original del laboratorio |
| `docente/E1-03_bayes_accidentes_solucionario.ipynb` | Docente: actividad resuelta y respuestas modelo calculadas con los datos que se carguen |
| `evaluacion/rubrica_laboratorio_2.pdf` | Docente |

## Cómo usarlo

1. El notebook descarga la base directamente de datos.gov.co (opción `descargar`). Si la red de la sala es lenta, descargue el CSV antes de la clase y pida usar la opción `subir`.
2. El estudiante elige un barrio de la lista de los más frecuentes. Si deja el campo vacío, se usa el barrio con más accidentes.
3. Al final, el notebook genera un Word con las respuestas escritas para entregar.

## Lectura para el profesor

**Eventos del laboratorio**

| | Evento | Definición en los datos |
|---|---|---|
| A | accidente con heridos | `GRAVEDAD == "CON HERIDOS"` |
| B | horario nocturno | `DIURNIO/NOCTURNO == "NOCTURNO"` (así se llama la columna en la fuente) |
| C | participación de motocicleta | `MOTO > 0` |
| D | participación de peatón | `PEATON > 0` |
| E | accidente con muertos | `GRAVEDAD == "CON MUERTOS"` |
| F | barrio seleccionado | `BARRIO == <barrio>` |

**Ideas clave para la discusión**
- La media de una columna `True`/`False` es una frecuencia relativa: así se estiman todas las probabilidades.
- P(A\|B) y P(B\|A) responden preguntas distintas. Como la mayoría de los accidentes es diurna, la mayoría de los accidentes con heridos también lo es, aunque de noche sea relativamente más probable tener heridos. Es la *falacia de la condicional transpuesta*.
- Con eventos raros (muertos) pocas observaciones cambian mucho la probabilidad: pida reportar cuántos casos sustentan cada valor.
- Una probabilidad condicional mayor indica **asociación**, no causalidad.

**Decisión de definición para discutir:** los accidentes "con muertos" no cuentan como "con heridos" aunque puedan tenerlos. Es una decisión sobre cómo se define el evento.

**Ajuste respecto a la guía en PDF:** la guía pide P(muertos \| peatón) en el caso y "muertos con motocicleta" en la pregunta de análisis 3. El notebook calcula ambas.

## Evaluación

Rúbrica de cinco criterios: preparación de la base (20 %), definición de eventos (20 %), cálculo de probabilidades (25 %), interpretación (30 %) y presentación (5 %).
