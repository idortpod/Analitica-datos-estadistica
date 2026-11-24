# E2-03 · Comparación de dos o más grupos: pruebas t y ANOVA

**Curso:** Estadística II (29006) · **Tema:** dos muestras independientes, ANOVA de un factor, comparaciones múltiples · **Duración:** 2 sesiones
**Datos:** casos industriales IC07, IC05 e IC03 (`datos/casos_industriales/`) · **Herramienta:** Python en Google Colab

## Propósito

Tres decisiones de una empresa manufacturera resueltas con pruebas de comparación de grupos:

| Parte | Caso | Modalidad | Pregunta |
|---|---|---|---|
| 1 | IC07 · Precios de compra | guiada | ¿El contrato marco reduce el precio frente a la compra puntual? |
| 2 | IC05 · Resistencia del acero por proveedor | semi-guiada | ¿Los tres proveedores entregan la misma resistencia media? |
| 3 | IC03 · Tiempos de reparación | autónoma | ¿El tiempo de reparación depende del tipo de equipo? |

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/E2-03_dos_muestras_y_anova.ipynb` | Estudiante (subir junto con los CSV IC03, IC05 e IC07) |
| `docente/E2-03_dos_muestras_y_anova_solucionario.ipynb` | Docente: código completo, respuestas modelo y resultados esperados |

## Lectura para el profesor

**Conceptos:** verificación de supuestos (normalidad por grupo, igualdad de varianzas); t de Student frente a t de Welch; Mann-Whitney; IC para la diferencia de medias; ANOVA como descomposición de la variabilidad; supuestos sobre los residuos; ANOVA de Welch; Tukey; Kruskal-Wallis; transformación logarítmica y su interpretación como razón.

**Resultados esperados**

- **IC07:** la compra puntual es asimétrica y tiene unas 8 veces la varianza del contrato marco, así que corresponde **Welch**. El contrato reduce el precio entre 4,0 y 7,3 mil $ por unidad (IC 95 %), alrededor de un 10 %, y además lo hace más estable.
- **IC05:** los residuos son normales, pero Levene rechaza (Pacífico es más disperso), por eso se reporta también el ANOVA de Welch. Todas las parejas difieren; Pacífico está unos 47–57 MPa por debajo y el 37 % de sus probetas no alcanza 450 MPa. Andes y Central difieren solo en 10 MPa: diferencia significativa pero poco relevante.
- **IC03:** los tiempos son lognormales; con el logaritmo se cumple la normalidad. Kruskal-Wallis y el ANOVA sobre log(tiempo) rechazan. El orden es Inyección > Prensa > Transportador > Empaque, y una inyectora tarda unas 2,9 veces más que una empacadora.

**Errores frecuentes:** usar Student sin revisar varianzas; revisar normalidad de toda la variable en vez de por grupo (o de los residuos); concluir "todas las medias son distintas" solo con el ANOVA, sin comparaciones múltiples; interpretar la diferencia de logaritmos como diferencia en minutos.

## Evaluación sugerida

| Criterio | Peso |
|---|---:|
| Verificación de supuestos y elección justificada de la prueba | 30 % |
| Cálculo correcto de pruebas e intervalos | 25 % |
| Comparaciones múltiples e interpretación de magnitudes | 20 % |
| Recomendación de negocio en el lenguaje del problema | 25 % |
