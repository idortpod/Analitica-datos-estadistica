# E1-02 · Perfilamiento de clientes con estadística descriptiva (taller en R)

**Curso:** Estadística I · **Tema:** descriptiva univariada y bivariada · **Duración:** 1 sesión + trabajo autónomo
**Datos:** `clientes_tienda.csv` (600 clientes sintéticos de una cadena de retail) · **Herramienta:** R en Google Colab con Otter-Grader

## Propósito

Cada estudiante toma, con su código estudiantil, una **muestra aleatoria simple de 120 clientes** y construye su perfil: frecuencias, media, desviación y coeficiente de variación, asimetría y curtosis, cuartiles y atípicos (Tukey), tablas de contingencia, medias por grupo y gráficos (histograma, cajas, dispersión). Cada cálculo va seguido de preguntas de opción múltiple que validan la interpretación en un contexto de negocio.

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E1-02_perfilamiento_clientes.ipynb` | Estudiante |
| `estudiante/anexos.zip` | Estudiante: carpeta `tests/` (verificaciones visibles) y `clientes_tienda.csv` |
| `docente/E1-02_perfilamiento_clientes_master.ipynb` | Fuente de Otter con soluciones y pruebas (edite aquí) |
| `docente/E1-02_perfilamiento_clientes_solucion.ipynb` | Notebook resuelto con todas las pruebas |
| `docente/tests/`, `docente/autograder.zip` | Pruebas completas (incluidas las ocultas) y paquete para calificar |

El procedimiento de entrega y calificación con Otter está en la [guía docente](../../GUIA_DOCENTE.md#4-talleres-autocalificados-con-otter-grader-r).

## Lectura para el profesor

**Conceptos:** frecuencia relativa y moda; dispersión relativa (CV) para comparar variables en escalas distintas; asimetría y curtosis (el paquete `moments` reporta la curtosis **no** en exceso: 3 para la normal); cuartiles con el tipo 7 de R; regla de Tukey; distribución condicional en una tabla de contingencia; comparación de grupos.

**Lo que suelen encontrar los estudiantes** (verificado con cientos de muestras):
- La región más frecuente tiene entre el 29 % y el 43 % de los clientes (concentración moderada).
- El CV del gasto es entre 1,7 y 3 veces el de la edad.
- El gasto es asimétrico a la derecha (asimetría entre 0,9 y 3,7) y leptocúrtico.
- Casi todas las muestras tienen atípicos **superiores** de antigüedad y ninguno inferior.
- Oro gasta en promedio entre 1,2 y 2,9 veces lo que gasta Bronce.
- La correlación entre frecuencia de compra y gasto es débil (en promedio ≈ 0,15): la hipótesis de marketing no se sostiene con fuerza.

Como la respuesta correcta de algunas preguntas depende de la muestra (por ejemplo, qué grupo tiene la mediana de gasto más alta), las pruebas ocultas calculan la respuesta con la muestra de cada estudiante.

**Errores frecuentes:** comparar desviaciones estándar en lugar de CV; calcular la proporción de Oro sobre el total en vez de sobre las clientes de género femenino; olvidar `prop.table()`; leer la curtosis de `moments` como si fuera de exceso.

## Evaluación

20 preguntas autocalificadas (cálculos: 2 puntos; opción múltiple: 1 punto) y una pregunta de reflexión final calificada a mano (respuesta modelo en el solucionario).
