# 00 · Herramientas

Notebooks reutilizables que funcionan con **cualquier** base del repositorio (o con la del estudiante). No son talleres con preguntas: son apoyo para clase, proyectos y consulta.

| Notebook | Para qué sirve | Cuándo usarlo |
|---|---|---|
| `H1_descriptiva_formularios.ipynb` | Tablas de frecuencia, medidas resumen, histogramas, cajas, tablas de contingencia, dispersión y correlación llenando formularios, sin escribir código. | Estadística I, proyecto descriptivo de curso, primeras exploraciones de cualquier base. |
| `H2_ajuste_distribuciones.ipynb` | Ajuste por máxima verosimilitud de siete modelos con tabla de AIC, comparación gráfica (densidad, acumulada, Q-Q) y cálculo de probabilidades con el modelo elegido. | Estadística I (modelos de probabilidad), proyecto de inversión con simulación, entrada de modelos de simulación en Investigación de Operaciones. |
| `H3_recetario_inferencia.ipynb` | Todas las pruebas e intervalos de Estadística II con funciones reutilizables, un ejemplo real por sección y un árbol de decisión. | Consulta durante Estadística II; material de apoyo para los talleres E2-02 a E2-05. |

## Cómo usarlos

- Abra el notebook en Colab y ejecute la primera celda de código. Cada sección tiene un formulario donde se cambian el archivo y las variables.
- Por defecto cargan una base de ejemplo del repositorio, de modo que se pueden ejecutar completos para mostrarlos en clase.
- Si el estudiante trabaja con su propia base, solo tiene que subirla a Colab y escribir su nombre en el formulario. Se aceptan CSV (separados por coma o punto y coma) y Excel.

## Notas para el profesor

- **H1** reporta la **curtosis como exceso** (0 para la normal), igual que `pandas`. En el taller E1-02 (R, paquete `moments`) la curtosis no es de exceso (3 para la normal). Conviene aclararlo si se usan ambos.
- **H2** usa la parametrización de clase (gamma y Weibull con forma y escala; lognormal con la media y la desviación de ln X). El p-valor de Kolmogorov-Smirnov no se reporta a propósito, porque no es válido cuando los parámetros se estiman con los mismos datos.
- **H3** corrige varias imprecisiones de la versión anterior (ver `CAMBIOS.md`). Su árbol de decisión es un buen cierre de curso.
