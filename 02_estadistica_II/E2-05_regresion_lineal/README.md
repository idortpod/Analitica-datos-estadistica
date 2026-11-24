# E2-05 · Correlación y regresión lineal

**Curso:** Estadística II (29006) · **Tema:** regresión simple y múltiple, intervalos de predicción, validación de supuestos · **Duración:** 2 sesiones
**Datos:** casos industriales IC08, IC10 e IC06 · **Herramienta:** Python en Google Colab

## Propósito

| Parte | Caso | Modalidad | Pregunta |
|---|---|---|---|
| 1 | IC08 · Quiebres de inventario | guiada | ¿La variabilidad de la demanda explica los quiebres? |
| 2 | IC10 · Consumo de combustible | semi-guiada | ¿Qué características del viaje explican el consumo de la flota? |
| 3 | IC06 · Condiciones ergonómicas | autónoma | ¿La temperatura, el ruido o la postura se relacionan con la frecuencia cardiaca? |

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E2-05_regresion_lineal.ipynb` | Estudiante (subir junto con los CSV IC06, IC08 e IC10) |
| `docente/E2-05_regresion_lineal_solucionario.ipynb` | Docente |

## Lectura para el profesor

**Conceptos:** correlación de Pearson y su prueba; mínimos cuadrados; interpretación de pendiente, intercepto y R²; IC para la media frente a intervalo de predicción; gráficos de residuos; R² ajustado; variables categóricas con dummies y categoría de referencia; prueba F parcial para comparar modelos anidados; multicolinealidad y VIF.

**Resultados esperados**

- **IC08:** r ≈ 0,64; cada punto de CV de la demanda aumenta los quiebres ≈ 0,21 puntos; R² ≈ 0,40. El costo unitario no aporta (p ≈ 0,11). El intervalo de predicción para CV bajos llega a valores negativos: limitación de un modelo lineal para una variable acotada en 0.
- **IC10:** R² ajustado ≈ 0,91. Camión mediano +6,6 y pesado +15,6 L/100 km frente al liviano; ruta montañosa ≈ +7 L/100 km frente a la plana; +0,44 L/100 km por tonelada. Día y experiencia del conductor no son significativos. La carga tiene r ≈ 0,85 con el consumo, pero su coeficiente se reduce mucho al controlar por tipo de vehículo (VIF ≈ 6–9): es el ejemplo para explicar el efecto de una variable "manteniendo las demás constantes".
- **IC06:** ninguna relación (|r| < 0,06; R² ≈ 0,006). El aprendizaje está en reconocer la ausencia de efecto y proponer un mejor diseño del estudio, no en forzar un modelo.

**Errores frecuentes:** interpretar el intercepto fuera del rango de los datos; confundir IC de la media con intervalo de predicción; comparar modelos con el R² sin ajustar; interpretar el coeficiente de una dummy sin decir cuál es la categoría de referencia; concluir causalidad.

## Evaluación sugerida

| Criterio | Peso |
|---|---:|
| Exploración y ajuste correcto de los modelos | 20 % |
| Interpretación de coeficientes, R² e intervalos en el contexto | 30 % |
| Validación de supuestos y comparación de modelos | 25 % |
| Pensamiento crítico (multicolinealidad, ausencia de relación, limitaciones) | 25 % |
