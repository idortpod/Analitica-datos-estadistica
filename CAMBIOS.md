# Registro de cambios respecto al material original

Este archivo documenta qué se corrigió o se agregó al organizar el repositorio (noviembre de 2026), para que pueda revisarse y, si es necesario, revertirse.

## Notebooks de Python

| Archivo original | Ahora | Cambios |
|---|---|---|
| `Estadistica_Pandas.ipynb` | `00_herramientas/H1_descriptiva_formularios.ipynb` | **Error corregido:** la celda de filtro volvía a leer el CSV y descartaba los nombres de columna cambiados. Ahora lee CSV y Excel (y detecta `;` o `,`), revisa el número de nombres al renombrar, calcula intervalos con la regla de Sturges por defecto (antes tenía fija una amplitud de 13.000.000), etiqueta la curtosis como exceso, agrega rango, RIC, varianza, límites de Tukey, barras apiladas, Spearman y matriz de correlación. Trae un ejemplo funcionando con `seguro_medico.csv`. |
| `ajuste_modelo_estadistico.ipynb` | `00_herramientas/H2_ajuste_distribuciones.ipynb` | Lee CSV y Excel. Se reemplazó `eval` por un intérprete seguro de textos como `gamma(2, 50)`. Se unificó la parametrización de gamma y Weibull (forma y escala, como en clase). Se agregó el **ajuste automático por máxima verosimilitud** con tabla de AIC y estadístico D, la comparación de varias densidades y de la función acumulada, y el cálculo de probabilidades con el modelo elegido. |
| `analisis_inferencial.ipynb` | `00_herramientas/H3_recetario_inferencia.ipynb` | Todo el código estaba comentado; ahora cada sección se ejecuta con un caso real del repositorio. **Correcciones conceptuales:** (1) Levene se presentaba como prueba paramétrica que exige normalidad; en realidad es la opción robusta, y la que exige normalidad es Bartlett. (2) La advertencia sobre K-S con parámetros estimados estaba invertida: la prueba se vuelve demasiado *conservadora*; se agregó Lilliefors. (3) Se aclaró el alcance de Mann-Whitney (no compara medianas salvo con formas iguales). Se agregaron: IC para la varianza, prueba F de dos varianzas, t pareada, ANOVA con Tukey, ANOVA de Welch, Kruskal-Wallis, V de Cramér y un árbol de decisión corregido. |
| `Laboratorio_3_Modelos_de_probabilidad.ipynb` | `01_estadistica_I/E1-04_modelos_probabilidad/` | Se corrigió la numeración de secciones (la 7 se repetía y luego saltaba a la 13). **Error corregido:** al exportar las respuestas, el ciclo `for pregunta, respuesta in ...` sobrescribía la función `pregunta()`. Se agregó la descarga directa desde datos.gov.co (además de subir el archivo), una tabla de rangos de depuración, simulación de muestras de 10 registros para comparar con la binomial, la corrección por continuidad para la talla y una tabla resumen con la diferencia modelo−observado. Se quitaron las salidas guardadas (708 KB → archivo liviano). **Nuevo:** solucionario docente con respuestas modelo calculadas sobre los datos cargados. |
| (solo en el PDF) Laboratorio 2 | `01_estadistica_I/E1-03_bayes_accidentes/` | El código estaba solo dentro de la guía en PDF; se reconstruyó como notebook. Las columnas se buscan de forma flexible y se normalizan tildes y mayúsculas. **Inconsistencia corregida:** la pregunta 6 del caso pide P(muertos \| peatón) y la pregunta de análisis 3 habla de motocicleta; ahora se calculan ambas. Se agregó un gráfico comparativo y la exportación de respuestas a Word, igual que en el laboratorio 3. **Nuevo:** solucionario docente. |

## Talleres de R (Otter-Grader)

Los tres archivos `taller*_master.ipynb` recibidos eran en realidad las **versiones de estudiante** generadas por Otter (sin soluciones) y no venía la carpeta `tests/`. Se reconstruyeron los notebooks maestros con soluciones y pruebas, y se regeneraron con `otter assign`.

- **Pruebas:** las de cálculo recalculan el valor con la muestra de cada estudiante. Las de opción múltiple tienen una verificación visible de formato (0 puntos) y una prueba oculta con la respuesta correcta (1 punto). Si la respuesta correcta depende de la muestra, la prueba oculta la calcula con la misma regla que se espera del estudiante. Se verificaron con varios códigos estudiantiles.
- **Renumeración:** Taller 1 → E2-01, Taller 2 → E1-02 (es de Estadística I), Taller 3 → E2-02. Se actualizaron los nombres de entrega para Moodle.
- **E2-02:** la celda inicial buscaba `clientes_tienda.csv` en lugar de `calidad_textil.csv`.
- **E1-02, pregunta 4.2:** la opción B decía que `Q3 + 1,5·RIC` era "bastante mayor al máximo observado en la mayoría de las muestras"; con esta base eso ocurre en menos del 1 % de las muestras. Se reescribió la opción.
- **E1-02, pregunta 8.1:** la opción correcta afirmaba que la mediana crece de Bronce a Plata y a Oro, lo cual falla en cerca del 7 % de las muestras. Las opciones ahora preguntan qué grupo tiene la mediana más alta y la prueba se ajusta a la muestra.
- **E1-02, pregunta 9.1:** la correlación entre frecuencia de compra y gasto va de −0,13 a 0,46 según la muestra (promedio ≈ 0,15). La respuesta "relación positiva" no era válida para todos; las opciones ahora distinguen relación fuerte de relación débil o casi nula.
- **E2-02, pregunta 3.4:** las opciones hablaban de "ambos intervalos"; en algunas muestras los intervalos de Wald y de Wilson no coinciden en si incluyen 0,95. La decisión ahora se basa en el intervalo de Wilson.
- La instalación de `ottr` solo se ejecuta si el paquete no está instalado.

## Datos

- Las cinco `muestra1–5.csv` de energía eran **la misma base con las filas en distinto orden**; se dejó una sola (`energia_ciclo_combinado.csv`).
- **Caso 7 (precios de compra):** el diccionario de la hoja de contexto describía variables de otro caso (`canal solicitud`, `tiempo resolucion horas`). Se corrigió.
- Casos industriales: nombres de columnas en `snake_case`, hojas en el mismo orden (`contexto`, `datos`), categorías sin guiones bajos (caso 9) y versión CSV de cada caso.
- Bases clásicas: nombres de columnas y categorías traducidos al español, `potencia_hp` de `consumo_autos` convertida a número (los "?" quedan como faltantes), hoja vacía de `notas.xlsx` eliminada y fuente citada para cada base.
- Se conservaron a propósito los faltantes de `viviendas_california` y `ventas_minorista` para practicar limpieza.

## Ajustes posteriores (24 de noviembre de 2026)

- **Encabezados de los notebooks de Python:** el bloque HTML con fondo de color se reemplazó por Markdown simple. GitHub elimina los estilos en línea, por lo que el título quedaba en blanco sobre fondo blanco; ahora se lee igual en Colab, Jupyter y GitHub, en modo claro u oscuro. Las notas para el docente y las respuestas modelo de los solucionarios también pasaron de HTML a citas en Markdown.
- **Cajas de los laboratorios E1-03 y E1-04** (instrucciones, preguntas y simulador de Bayes): se fijó el color del texto para que se lean en el modo oscuro de Colab.
- Repositorio preparado para git: `.gitignore`, `.gitattributes`, notebooks sin salidas ni metadatos de ejecución.

## Pendientes sugeridos

- Las guías en PDF de los laboratorios no se modificaron. Si se editan las versiones en Word, conviene ajustar lo señalado en el README de cada módulo (en especial la guía del laboratorio 1).
- No se encontraron en el material recibido los solucionarios del laboratorio 1 ni las versiones en Word que menciona el instructivo.
