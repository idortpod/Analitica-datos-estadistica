# E2-01 · El Teorema del Límite Central por simulación (taller en R)

**Curso:** Estadística II (29006) · **Tema:** distribución de la suma de variables aleatorias, TLC · **Duración:** 1 sesión
**Datos:** simulados a partir del código estudiantil · **Herramienta:** R en Google Colab con Otter-Grader

## Propósito

El estudiante **descubre** el TLC para sumas: simula sumas de variables uniformes (simétricas) y exponenciales (asimétricas), observa cómo la forma se acerca a una campana al crecer n y compara media y varianza empíricas con n·μ y n·σ². Termina con una decisión de mantenimiento: la probabilidad de que el tiempo total de reparación de 40 máquinas supere las horas disponibles.

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E2-01_TLC_simulacion.ipynb` | Estudiante |
| `estudiante/anexos.zip` | Estudiante: carpeta `tests/` |
| `docente/E2-01_TLC_simulacion_master.ipynb` | Fuente de Otter con soluciones y pruebas |
| `docente/E2-01_TLC_simulacion_solucion.ipynb` | Notebook resuelto |
| `docente/tests/`, `docente/autograder.zip` | Pruebas completas y paquete para calificar |

## Lectura para el profesor

**Estructura:** parte 1 guiada (uniforme), parte 2 semi-guiada (exponencial), parte 3 de aplicación. Cada estudiante recibe parámetros propios (a, b, λ y horas disponibles) generados con su código.

**Conceptos:** E[X] y Var(X) de la uniforme y la exponencial; propiedades de la suma de variables independientes, E[S] = nμ y Var(S) = nσ²; TLC para sumas (no para promedios: insista en la diferencia); velocidad de convergencia según la asimetría; aproximación normal frente a Monte Carlo.

**Sobre las pruebas de la función de simulación:** se verifica que devuelva `n_rep` valores, que sea reproducible (usa `reseed()`), que su media sea coherente con n·E[X] y, en una prueba oculta, que coincida exactamente con la implementación de referencia `replicate(n_rep, sum(runif(n, a, b)))`. Una implementación con `colSums(matrix(runif(n * n_rep), nrow = n))` también es válida y produce los mismos números.

**Errores frecuentes:** usar la varianza del promedio (σ²/n) en lugar de la de la suma (nσ²); pasar la varianza en lugar de la desviación estándar a `pnorm()`; calcular P(S ≤ horas) en vez de P(S > horas); confundir la tasa λ con la media en `rexp()`.

## Evaluación

7 preguntas autocalificadas (10 puntos) y 3 preguntas de reflexión calificadas a mano (respuestas modelo en el solucionario).
