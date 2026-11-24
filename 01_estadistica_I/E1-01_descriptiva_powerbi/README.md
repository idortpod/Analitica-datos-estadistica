# E1-01 · Dashboards descriptivos en Power BI (Laboratorio 1)

**Curso:** Estadística I · **Tema:** estadística descriptiva y comunicación con datos · **Duración:** 2 sesiones + actividad autónoma
**Datos:** [Casos positivos de COVID-19 en Colombia](https://www.datos.gov.co/Salud-y-Protecci-n-Social/Casos-positivos-de-COVID-19-en-Colombia-/gt2j-8ykr) · **Herramienta:** Power BI Desktop

## Propósito

El estudiante construye un tablero descriptivo: limpia la base en Power Query, crea medidas en DAX (conteos, media, mediana, moda), compara categorías y comunica hallazgos con principios de *data storytelling*. En la actividad autónoma repite el proceso con una base que elige su grupo en datos.gov.co.

## Archivos

| Archivo | Para quién |
|---|---|
| `estudiante/guia_laboratorio_1_powerbi.pdf` | Estudiante: caso, paso a paso, medidas DAX, preguntas y actividad autónoma |
| `evaluacion/rubrica_laboratorio_1.pdf` | Docente: seis criterios con escala de 1 a 5 |

Las bases sugeridas para la actividad autónoma están en [`datos/DATOS_ABIERTOS_COLOMBIA.md`](../../datos/DATOS_ABIERTOS_COLOMBIA.md). Los casos industriales en Excel (`datos/casos_industriales/xlsx/`) también sirven como alternativa liviana.

## Lectura para el profesor

**Conceptos que se trabajan:** tipos de variables; media, mediana y moda; agrupación en intervalos; frecuencias absolutas y relativas; elección del gráfico según el tipo de variable; efecto de los filtros sobre los indicadores; asimetría (media frente a mediana).

**Antes de la clase**

- La base tiene **millones de registros**: el archivo completo pesa varios cientos de megabytes y tarda en cargar. Para la clase conviene descargar una versión filtrada (por ejemplo, un departamento o un año) desde el portal: *Ver datos → Filtrar → Exportar → CSV*.
- Revise los valores reales de las columnas `Sexo` y `Recuperado`: en distintos periodos la fuente ha usado mayúsculas y minúsculas diferentes (`F`/`f`, `Fallecido`/`fallecido`). Las medidas `CALCULATE(... = "F")` de la guía solo cuentan coincidencias exactas; si hay variantes, normalícelas en Power Query (*Transformar → Formato → MAYÚSCULAS*).
- Verifique si la base incluye una columna con la **unidad de medida de la edad** (años, meses o días). Si existe, filtre solo los registros en años antes de calcular la edad promedio; de lo contrario, los bebés con edad en meses o días distorsionan las medidas.

**Ajustes sugeridos a la guía** (si se edita la versión en Word)

1. En la Parte 1, paso 3, la variable *Edad* aparece a la vez como "número entero" y en la lista de variables "en formato texto". Debe quedar como número entero; *Nombre departamento*, *Sexo* y *Recuperado* como texto.
2. El caso y las actividades piden la **moda** de la edad, pero la guía no trae la medida. Una opción en DAX:

   ```DAX
   Edad Moda =
   MINX(
       TOPN(1, SUMMARIZE('Nombre_de_la_tabla', 'Nombre_de_la_tabla'[Edad], "n", COUNTROWS('Nombre_de_la_tabla')), [n], DESC),
       'Nombre_de_la_tabla'[Edad]
   )
   ```
3. Después de las medidas por estado del caso, la guía dice que "permitirán analizar la dinámica general de transmisión". El estado del caso describe el **desenlace** (activo, recuperado, fallecido), no la transmisión.
4. Para la pregunta 1 (asimetría), sugiera comparar media y mediana **y** observar el histograma por rangos de edad: con esta base la media suele ser algo mayor que la mediana.

**Errores frecuentes:** usar gráficos circulares con más de cinco categorías (departamentos); interpretar conteos absolutos por departamento sin considerar la población; confundir *filtro de página* con *segmentador*; dejar las tarjetas con abreviaturas ("6 mill.").

## Evaluación

Rúbrica de seis criterios: base de datos (10 %), preparación (20 %), indicadores (20 %), diseño del tablero (10 %), interpretación (20 %) y *data storytelling* (20 %).
