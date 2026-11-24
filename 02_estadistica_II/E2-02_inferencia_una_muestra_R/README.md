# E2-02 · Inferencia sobre una media, una mediana y una proporción (taller en R)

**Curso:** Estadística II (29006) · **Tema:** pruebas de hipótesis e intervalos de confianza para una muestra · **Duración:** 1 sesión + trabajo autónomo
**Datos:** `calidad_textil.csv` (1.000 prendas sintéticas) · **Herramienta:** R en Google Colab con Otter-Grader

## Propósito

Una empresa textil debe verificar tres cláusulas de calidad de un contrato. Con una muestra aleatoria de 150 prendas (determinada por su código), el estudiante:

1. contrasta el **gramaje medio** contra 180 g/m² (Shapiro-Wilk → t de una muestra → IC);
2. contrasta la **mediana de defectos de costura** contra 1 (Shapiro-Wilk → Wilcoxon);
3. contrasta la **proporción de color conforme** contra 95 % (`prop.test`, IC de Wald y de Wilson, error estándar y precisión lograda);

y termina con una recomendación que pondera alternativas y costos.

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E2-02_inferencia_una_muestra.ipynb` | Estudiante |
| `estudiante/anexos.zip` | Estudiante: `tests/` y `calidad_textil.csv` |
| `docente/E2-02_inferencia_una_muestra_master.ipynb` | Fuente de Otter con soluciones y pruebas |
| `docente/E2-02_inferencia_una_muestra_solucion.ipynb` | Notebook resuelto |
| `docente/tests/`, `docente/autograder.zip` | Pruebas completas y paquete para calificar |

## Lectura para el profesor

**Lo que suelen encontrar los estudiantes** (verificado con miles de códigos simulados):
- El gramaje es compatible con la normalidad en el 97 % de las muestras. En el 3 % restante Shapiro rechaza; las pruebas ocultas aceptan la respuesta coherente con la muestra de cada estudiante.
- La media del gramaje queda por debajo de 180 en prácticamente todas las muestras (p < 0,05 en el 99,9 %), pero la diferencia es de pocos g/m²: buena ocasión para discutir **significancia frente a relevancia práctica** (pregunta 1.7).
- Los defectos de costura no son normales y su mediana supera 1 en todas las muestras.
- La conformidad de color está alrededor del 86 % y el intervalo de Wilson queda por debajo de 0,95 en el 99 % de las muestras. El margen de error logrado (≈ 0,04 a 0,07) es mayor que el 0,025 que se quería: la muestra de 150 no basta para esa precisión.

**Detalles técnicos:**
- `wilcox.test()` emite advertencias por los empates y los valores iguales a 1; es esperado y es justamente la limitación de la pregunta 2.4.
- En `prop.test()` la prueba acepta el resultado con o sin corrección de continuidad. El IC de Wilson se pide con `correct = FALSE`.

**Errores frecuentes:** usar `alternative = "two.sided"` en las pruebas unilaterales; plantear la hipótesis de la proporción al revés (H₁: π > 0,95); interpretar el IC como "95 % de probabilidad de que el parámetro esté dentro".

## Evaluación

18 preguntas autocalificadas y una reflexión final calificada a mano (respuesta modelo en el solucionario).
