# E1-04 · Modelos de probabilidad con datos reales (Laboratorio 3)

**Curso:** Estadística I · **Tema:** distribuciones normal, uniforme, binomial y exponencial · **Duración:** 2 sesiones
**Datos:** [Embarazo en adolescentes](https://www.datos.gov.co/Salud-y-Protecci-n-Social/Embarazo-en-adolescentes/dpcy-dq5j) · **Herramienta:** Python en Google Colab

## Propósito

El estudiante explora y depura cuatro variables (edad de la madre, edad del padre, peso y talla al nacer), las compara con modelos teóricos y contrasta las probabilidades que da cada modelo con las observadas en los datos. El objetivo no es "probar" que los datos siguen un modelo, sino decidir **cuándo un modelo es útil** y argumentar sus limitaciones.

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E1-04_modelos_probabilidad.ipynb` | Estudiante: notebook guiado con preguntas de análisis y exportación de respuestas a Word |
| `estudiante/guia_laboratorio_3_modelos.pdf` | Estudiante: guía original (el caso está integrado en el notebook) |
| `docente/E1-04_modelos_probabilidad_solucionario.ipynb` | Docente: respuestas modelo y cifras calculadas con los datos que se carguen |
| `evaluacion/rubrica_laboratorio_3.pdf` | Docente |

## Lectura para el profesor

| Análisis | Modelo | Qué se espera concluir |
|---|---|---|
| Peso al nacer | Normal | Buen ajuste en la zona central; la cola izquierda (bajo peso, ≤ 2,5 kg) es más pesada que la normal. |
| Talla al nacer | Normal | La forma es acampanada, pero la talla está registrada en centímetros enteros: las probabilidades de intervalos cerrados difieren del modelo. Buen momento para la **corrección por continuidad**. |
| Edad de la madre | Uniforme (contraste) | **No ajusta**: los nacimientos se concentran entre los 16 y los 19 años. El modelo sobreestima mucho P(edad ≤ 15). |
| Bajo peso en 10 registros | Binomial | Ajusta bien; la simulación con la base lo confirma. Lo más probable es encontrar 0 o 1 caso. |
| Madres ≤ 15 años en 10 registros | Binomial | Igual; se conecta con el histograma de la edad. |
| Diferencia de edad padre–madre | Exponencial | Discutible: la moda no está en cero. Capta la asimetría pero sobreestima las diferencias muy pequeñas; gamma o lognormal serían mejores (se pueden probar con H2). |

**Depuración:** la base trae códigos de "sin información" (por ejemplo 99 o 999) que inflan máximos y medias. El notebook depura cada variable por separado con rangos plausibles, sin eliminar filas completas.

**Coherencia con la rúbrica:** el criterio 2 menciona los modelos normal, binomial y exponencial. El uniforme se trabaja como contraste; puede evaluarse dentro del criterio 4 (análisis crítico).

**Errores frecuentes:** calcular la probabilidad normal con los datos sin depurar; afirmar que la variable "es normal" porque el modelo da un valor parecido en un solo intervalo; interpretar el parámetro de la exponencial como la moda.

## Evaluación

Rúbrica de cinco criterios: exploración inicial (20 %), aplicación de modelos (20 %), comparación teórico–observado (25 %), análisis crítico (30 %) y presentación (5 %).
