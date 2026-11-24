# E2-04 · Pruebas χ²: independencia y bondad de ajuste

**Curso:** Estadística II (29006) · **Tema:** tablas de contingencia, χ² de independencia, χ² de bondad de ajuste · **Duración:** 1 sesión + trabajo autónomo
**Datos:** casos industriales IC01, IC09 e IC02 · **Herramienta:** Python en Google Colab

## Propósito

| Parte | Caso | Modalidad | Pregunta |
|---|---|---|---|
| 1 | IC01 · Despachos | guiada | ¿El cumplimiento del despacho depende del turno? ¿Y de la zona del almacén? |
| 2 | IC09 · Proyectos | semi-guiada | ¿El cumplimiento del cronograma se asocia con la complejidad y con el esquema del equipo? |
| 3 | IC02 · Interrupciones | autónoma | ¿El número de interrupciones por turno sigue una distribución de Poisson? |

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E2-04_chi_cuadrado.ipynb` | Estudiante (subir junto con los CSV IC01, IC02 e IC09) |
| `docente/E2-04_chi_cuadrado_solucionario.ipynb` | Docente |

## Lectura para el profesor

**Conceptos:** distribución condicional (porcentajes por fila); frecuencias esperadas bajo independencia; condiciones de validez (ninguna esperada < 1 y no más del 20 % < 5); V de Cramér como medida de fuerza; **residuos estandarizados ajustados** para localizar la asociación; bondad de ajuste con un parámetro estimado (se resta un grado de libertad) y agrupación de la cola.

**Resultados esperados**

| Análisis | χ² | gl | p | V | Lectura |
|---|---:|---:|---:|---:|---|
| Turno × cumplimiento (IC01) | 40,9 | 6 | < 0,001 | 0,19 | El turno de noche concentra los retrasos severos (21 % frente a 6 % en la mañana) |
| Zona × cumplimiento (IC01) | 5,0 | 8 | 0,76 | 0,07 | Sin evidencia de asociación: caso de contraste |
| Complejidad × cronograma (IC09) | 189,5 | 4 | < 0,001 | 0,43 | Asociación fuerte |
| Esquema × cronograma (IC09) | 25,4 | 4 | < 0,001 | 0,16 | Asociación débil; los tercerizados tienen más retrasos altos |
| Poisson para interrupciones (IC02) | 14,6 | 3 | 0,002 | — | No ajusta: varianza ≈ 2,1 > media ≈ 1,4 (sobredispersión) |

**Errores frecuentes:** revisar las frecuencias **observadas** en lugar de las esperadas para la regla de validez; leer el p-valor como fuerza de la asociación (para eso está la V de Cramér); olvidar restar el grado de libertad del parámetro estimado; interpretar "no se rechaza" como "se demostró la independencia".

## Evaluación sugerida

| Criterio | Peso |
|---|---:|
| Tablas y porcentajes adecuados (por fila según la pregunta) | 20 % |
| Verificación de condiciones y cálculo de la prueba | 25 % |
| Interpretación de fuerza (V) y de residuos | 30 % |
| Conclusión y recomendación en el contexto | 25 % |
