# Guía docente

Indicaciones prácticas para usar los recursos del repositorio en clase. Los detalles de cada actividad están en el `README.md` de su módulo.

## 1. Tipos de recurso

| Tipo | Módulos | Cómo se trabaja | Cómo se califica |
|---|---|---|---|
| **Laboratorio guiado** (Python) | E1-03, E1-04 | El código está completo; el estudiante ejecuta, interpreta y escribe sus respuestas en cajas de texto. Al final descarga un Word con sus respuestas. | Rúbrica en `evaluacion/` |
| **Taller autocalificado** (R + Otter) | E1-02, E2-01, E2-02 | El estudiante completa celdas de código y opción múltiple; cada respuesta tiene una verificación automática. Cada estudiante recibe datos distintos según su código. | Otter-Grader (`autograder.zip`) + revisión de las preguntas abiertas |
| **Taller por partes** (Python) | E2-03, E2-04, E2-05 | Parte 1 guiada, parte 2 semi-guiada, parte 3 autónoma. El estudiante completa celdas de código y responde en celdas de texto. | Solucionario en `docente/` |
| **Dashboard** (Power BI) | E1-01 | Guía paso a paso en PDF y actividad autónoma con una base elegida por el grupo. | Rúbrica en `evaluacion/` |
| **Herramienta** | H1, H2, H3 | Formularios y funciones listos para usar con cualquier base. Sirven en clase, en proyectos y como consulta. | — |

## 2. Antes de la clase

- **Ejecute la versión docente completa** con los datos que usarán los estudiantes. En los laboratorios con datos de datos.gov.co las cifras cambian cuando la entidad actualiza la base; las respuestas modelo se calculan con los datos cargados, de modo que siempre coinciden con lo que verán los estudiantes.
- Revise la sección **"Resultados esperados"** o **"Nota para el docente"** al inicio de cada solucionario: resume las conclusiones y los errores frecuentes.
- Para bases grandes de datos.gov.co, descargue el CSV con anticipación (la descarga en clase puede ser lenta si todos lo hacen a la vez).

## 3. Google Colab

- **Python:** abra el `.ipynb` en Colab. Los notebooks usan formularios (`#@param`) que aparecen como campos a la derecha de la celda.
- **R:** los talleres de R usan el entorno de R de Colab (*Entorno de ejecución → Cambiar tipo de entorno → R*). El notebook ya trae esa configuración.
- Colab **no guarda los archivos subidos** entre sesiones. Cada vez que el estudiante abre una sesión nueva debe subir de nuevo la base o el `anexos.zip`.
- Los notebooks de Python buscan la base primero en la carpeta del notebook y en `datos/` del repositorio; si no la encuentran, abren el diálogo para subirla.

## 4. Talleres autocalificados con Otter-Grader (R)

Cada taller de R tiene esta estructura:

```
estudiante/
  <taller>.ipynb        ← notebook para el estudiante (sin soluciones)
  anexos.zip            ← carpeta tests/ con las verificaciones visibles + la base CSV
docente/
  <taller>_master.ipynb ← fuente de Otter (soluciones + pruebas). Edítelo aquí.
  <taller>_solucion.ipynb
  tests/                ← todas las pruebas, incluidas las ocultas
  autograder.zip        ← para calificar con `otter grade`
```

- **Entregar:** comparta el notebook y `anexos.zip`. El estudiante sube el zip a Colab y ejecuta `unzip("anexos.zip")` (la primera celda trae la instrucción).
- **Personalización:** cada estudiante escribe su código en la celda de configuración; de él dependen sus parámetros o su muestra. Las pruebas recalculan las respuestas con la muestra del estudiante.
- **Pruebas visibles y ocultas:** en las preguntas de cálculo las pruebas visibles verifican el valor, para que el estudiante corrija mientras trabaja. En las de opción múltiple la prueba visible solo revisa el formato (una letra de la A a la D); la respuesta correcta se evalúa con una prueba oculta.
- **Calificar:** reúna los `.ipynb` entregados en una carpeta y ejecute
  `otter grade -a docente/autograder.zip --ext ipynb -o resultados <carpeta_entregas>`. Este comando necesita **Docker**. Sin Docker, `otter run -a docente/autograder.zip <entrega>.ipynb` califica una entrega a la vez (requiere R y el paquete de Python `rpy2` compatibles con su versión de R). Las preguntas de reflexión se revisan a mano.
- **Modificar un taller:** edite el `_master.ipynb` y regenere con `otter assign <taller>_master.ipynb salida --no-run-tests`. Las soluciones van entre celdas *raw* `# BEGIN SOLUTION` / `# END SOLUTION`.

## 5. Datos

- `datos/CATALOGO.md` describe todas las bases (fuente, variables, temas sugeridos y problemas de calidad).
- `datos/DATOS_ABIERTOS_COLOMBIA.md` sugiere bases de datos.gov.co para proyectos o para la actividad autónoma del laboratorio de Power BI.
- Los diez **casos industriales** (IC01–IC10) son sintéticos y tienen un contexto escrito, ideal para pedir al estudiante que plantee la pregunta y las hipótesis antes de analizar.

## 6. Recomendaciones pedagógicas

- Pida siempre una **conclusión en el lenguaje del problema** (qué hacer, cuánto se ahorra, qué riesgo hay), no solo "se rechaza H₀".
- Insista en distinguir **significancia estadística** de **relevancia práctica**; varios casos están diseñados para discutirlo (IC05, calidad textil).
- Use los casos "sin efecto" (zona del almacén en IC01, ergonomía en IC06) para mostrar que no encontrar una relación también es un resultado.
