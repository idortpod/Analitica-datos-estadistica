# Catálogo de conjuntos de datos

Este catálogo describe cada base del repositorio: de dónde viene, qué variables tiene y para qué temas sirve. El diccionario completo de cada base está en `diccionarios/<nombre>.csv`.

## Resumen

| Base | Carpeta | Filas | Variables | Temas sugeridos |
|---|---|---:|---:|---|
| [IC01_despachos_centro_distribucion](#ic01_despachos_centro_distribucion) | casos_industriales | 542 | 3 | Tablas de contingencia. χ² de independencia (cumplimiento × turno. × zona). |
| [IC02_consumos_planta](#ic02_consumos_planta) | casos_industriales | 192 | 3 | Distribución de conteos (Poisson). normalidad. correlación energía–agua. |
| [IC03_tiempos_reparacion](#ic03_tiempos_reparacion) | casos_industriales | 537 | 2 | Comparación de 4 grupos: ANOVA / Kruskal-Wallis; asimetría de tiempos de reparación. |
| [IC04_productividad_linea_ensamble](#ic04_productividad_linea_ensamble) | casos_industriales | 276 | 1 | Una muestra: IC y prueba para la media; ajuste de distribuciones discretas. |
| [IC05_resistencia_proveedores](#ic05_resistencia_proveedores) | casos_industriales | 318 | 2 | ANOVA de un factor. Levene. comparaciones múltiples (Tukey). |
| [IC06_condiciones_ergonomicas](#ic06_condiciones_ergonomicas) | casos_industriales | 731 | 4 | Correlación y regresión lineal (frecuencia cardiaca vs. temperatura. postura. ruido). |
| [IC07_precios_compras](#ic07_precios_compras) | casos_industriales | 347 | 2 | Dos muestras independientes: t de Student/Welch. F de varianzas. Mann-Whitney. |
| [IC08_inventarios_quiebres](#ic08_inventarios_quiebres) | casos_industriales | 484 | 3 | Regresión simple y múltiple. variables en porcentaje. residuos. |
| [IC09_proyectos_industriales](#ic09_proyectos_industriales) | casos_industriales | 512 | 5 | χ² de independencia con variables ordinales (cronograma × complejidad. × esquema). |
| [IC10_consumo_combustible_flota](#ic10_consumo_combustible_flota) | casos_industriales | 326 | 6 | Regresión múltiple con variables categóricas (dummies). ANOVA. |
| [consumo_autos](#consumo_autos) | clasicos | 398 | 10 | Regresión simple y múltiple. correlación. comparación de medias por origen (ANOVA). datos faltantes. |
| [calidad_vinos](#calidad_vinos) | clasicos | 6.497 | 13 | Descriptiva bivariada. comparación de dos grupos (tinto vs. blanco). ANOVA por nivel de calidad. regresión múltiple. |
| [resistencia_concreto](#resistencia_concreto) | clasicos | 1.030 | 9 | Regresión múltiple. relaciones no lineales (edad). correlación. control de calidad de materiales. |
| [viviendas_california](#viviendas_california) | clasicos | 20.640 | 10 | Descriptiva con datos grandes. asimetría. datos censurados (tope en 500.001). regresión. mapas de dispersión. |
| [energia_ciclo_combinado](#energia_ciclo_combinado) | clasicos | 9.568 | 5 | Regresión lineal múltiple (relación casi lineal y fuerte). correlación. intervalos de predicción. |
| [puntajes_examenes](#puntajes_examenes) | clasicos | 1.000 | 4 | Descriptiva. comparación de dos medias por género. correlación entre puntajes. normalidad. |
| [desempeno_matematicas](#desempeno_matematicas) | clasicos | 395 | 33 | Tablas de contingencia. χ². comparación de medias. ANOVA. regresión. variables ordinales. |
| [ventas_minorista](#ventas_minorista) | clasicos | 5.681 | 11 | Limpieza de datos (faltantes. categoría `sin_dato`). descriptiva por grupos. ANOVA. tablas de contingencia. |
| [alquiler_bicicletas](#alquiler_bicicletas) | clasicos | 731 | 16 | Series de tiempo descriptivas. comparación por estación (ANOVA). regresión con clima. conteos. |
| [seguro_medico](#seguro_medico) | clasicos | 1.338 | 7 | Asimetría y transformaciones. comparación de medias (fumador vs. no). ANOVA por región. regresión múltiple con variables dummy. |
| [publicidad_ventas](#publicidad_ventas) | clasicos | 200 | 4 | Regresión simple y múltiple. interpretación de coeficientes. multicolinealidad. |
| [clientes_tienda](#clientes_tienda) | talleres | 600 | 8 | Base del taller E1-02. |
| [calidad_textil](#calidad_textil) | talleres | 1.000 | 4 | Base del taller E2-02. |

## Casos industriales

Diez casos sintéticos con contexto de ingeniería industrial, construidos para el curso. Cada caso viene en dos formatos: `csv/` (para Python y R) y `xlsx/` (hoja `contexto` con el enunciado y el diccionario, hoja `datos`).

### IC01_despachos_centro_distribucion

Un centro de distribución de productos de consumo masivo realizó durante varias semanas un seguimiento a 542 órdenes de despacho seleccionadas de sus registros operativos. Para cada orden se registró el nivel de cumplimiento del despacho respecto a la hora programada, el turno en el que se realizó la preparación del pedido y la zona del almacén desde la cual se despachó la mayor parte de los productos. La información proviene del sistema de gestión de almacenes y de los registros de salida de vehículos, por lo que cada fila corresponde a una orden efectivamente procesada.

El interés del responsable de operaciones es determinar si algunas características del proceso están relacionadas con el cumplimiento del despacho.

- **Registros:** 542  ·  **Temas:** Tablas de contingencia, χ² de independencia (cumplimiento × turno, × zona).

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `cumplimiento_despacho` | categórica | Clasificación de la orden según el cumplimiento de la hora programada de despacho. | A tiempo, Retraso moderado, Retraso severo |
| `turno_preparacion` | categórica | Turno en el que se realizó principalmente la preparación de la orden. | Mañana, Tarde, Noche, Madrugada |
| `zona_almacen` | categórica | Zona de almacenamiento de la que provino la mayor proporción de productos incluidos en la orden. | Zona A, Zona B, Zona C, Zona D, Zona E |

### IC02_consumos_planta

Una planta de fabricación de productos plásticos realizó un seguimiento de sus consumos y eventos operativos durante 192 turnos de producción a lo largo de varios meses. Para cada turno, el sistema de monitoreo industrial consolidó el consumo total de energía eléctrica y de agua utilizada en producción y limpieza. Adicionalmente, a partir de los registros del sistema de supervisión se contabilizó el número de interrupciones menores ocurridas durante el turno, entendidas como paradas no programadas que no superaron los 15 minutos.

- **Registros:** 192  ·  **Temas:** Distribución de conteos (Poisson), normalidad, correlación energía–agua.

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `consumo_energia_kwh` | numérica | Energía eléctrica total consumida durante el turno de producción. | kWh por turno |
| `consumo_agua_m3` | numérica | Volumen total de agua utilizado durante el turno en actividades de producción y limpieza. | m³ por turno |
| `numero_interrupciones` | numérica | Número de interrupciones no programadas de corta duración registradas durante el turno. | interrupciones por turno |

### IC03_tiempos_reparacion

El área de mantenimiento de una planta de manufactura consolidó información de 537 órdenes de mantenimiento correctivo cerradas durante aproximadamente un año. Para cada intervención se registró la familia del equipo que presentó la falla y el tiempo transcurrido desde que el técnico inició la intervención hasta que el equipo estuvo nuevamente disponible para producción. Los registros provienen del sistema computarizado de gestión de mantenimiento de la planta.

La empresa opera diferentes familias de equipos cuya complejidad técnica y facilidad de intervención no son iguales.

- **Registros:** 537  ·  **Temas:** Comparación de 4 grupos: ANOVA / Kruskal-Wallis; asimetría de tiempos de reparación.

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `tipo_equipo` | categórica | Familia del equipo sobre el cual se realizó la intervención de mantenimiento correctivo. | Empaque, Transportador, Prensa, Inyeccion |
| `tiempo_reparacion_min` | numérica | Tiempo transcurrido desde el inicio de la intervención hasta que el equipo estuvo nuevamente disponible para producción. | minutos |

### IC04_productividad_linea_ensamble

Una empresa dedicada al ensamble de pequeños componentes electromecánicos realizó un estudio de productividad en una de sus líneas durante varias semanas. A partir del sistema de registro de producción se obtuvieron 276 observaciones completas de operario-jornada, considerando únicamente jornadas ordinarias en las que se fabricó la misma familia de productos. Para cada observación se contabilizó el número total de unidades que superaron satisfactoriamente la inspección al final de la jornada. Se excluyeron jornadas parciales, capacitaciones y periodos en los que la línea estuvo detenida por mantenimiento programado.

- **Registros:** 276  ·  **Temas:** Una muestra: IC y prueba para la media; ajuste de distribuciones discretas.

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `unidades_producidas` | numérica | Número de unidades terminadas que superaron satisfactoriamente la inspección al finalizar la jornada. | unidades por operario-jornada |

### IC05_resistencia_proveedores

Una empresa fabricante de componentes metálicos realizó controles de recepción sobre bobinas de acero provenientes de tres proveedores habituales. Durante nueve meses se conservaron los resultados de 318 ensayos de resistencia a la tracción, cada uno realizado sobre una probeta tomada de una bobina recibida. El laboratorio reportó la resistencia máxima alcanzada por la probeta en megapascales (MPa), con una precisión de una cifra decimal, y el sistema de calidad permitió asociar cada resultado con el proveedor correspondiente.

- **Registros:** 318  ·  **Temas:** ANOVA de un factor, Levene, comparaciones múltiples (Tukey).

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `proveedor` | categórica | Proveedor de la bobina de acero de la cual se obtuvo la probeta utilizada en el ensayo. | Andes, Central, Pacifico |
| `resistencia_traccion_mpa` | numérica | Resistencia máxima alcanzada por la probeta durante el ensayo de tracción. | MPa |

### IC06_condiciones_ergonomicas

El equipo de seguridad y salud en el trabajo de una planta industrial realizó 731 observaciones de puestos de trabajo durante una campaña de evaluación ergonómica y de condiciones ambientales. Las mediciones se efectuaron en diferentes momentos de la jornada y en distintas áreas operativas. En cada observación se registraron la frecuencia cardiaca del trabajador, la temperatura ambiental, el tiempo continuo que llevaba manteniendo una postura estática y el nivel de presión sonora del puesto. Las mediciones provinieron de pulsómetros, sensores ambientales y observación directa.

- **Registros:** 731  ·  **Temas:** Correlación y regresión lineal (frecuencia cardiaca vs. temperatura, postura, ruido).

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `frecuencia_cardiaca_lpm` | numérica | Frecuencia cardiaca registrada durante la observación del puesto de trabajo. | latidos por minuto (lpm) |
| `temperatura_ambiente_c` | numérica | Temperatura ambiental registrada en el puesto durante la observación. | °C |
| `tiempo_postura_estatica_min` | numérica | Tiempo continuo durante el cual el trabajador había mantenido una postura predominantemente estática. | minutos |
| `nivel_ruido_dba` | numérica | Nivel de presión sonora registrado en el puesto de trabajo durante la observación. | dBA |

### IC07_precios_compras

El área de abastecimiento de una empresa manufacturera consolidó 347 órdenes de compra correspondientes a un mismo insumo industrial estandarizado adquirido durante aproximadamente un año. Para cada orden se registró el precio unitario efectivamente pagado y si la adquisición se realizó mediante un contrato marco con un proveedor previamente negociado o como una compra puntual en el mercado. Para mantener comparables los registros, se consideraron órdenes del mismo tipo de presentación y se expresaron todos los precios en miles de pesos por unidad.

- **Registros:** 347  ·  **Temas:** Dos muestras independientes: t de Student/Welch, F de varianzas, Mann-Whitney.

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `tipo_compra` | categórica | Modalidad de adquisición utilizada en la orden de compra. | Contrato marco, Compra puntual |
| `precio_unitario_miles` | numérica | Precio unitario efectivamente pagado por el insumo en la orden. | miles de pesos colombianos por unidad |

### IC08_inventarios_quiebres

Una empresa distribuidora de repuestos industriales consolidó 484 registros producto-mes correspondientes a referencias gestionadas bajo una política periódica de reposición. Para cada registro se calculó el porcentaje de ocasiones en que el inventario disponible no fue suficiente para atender completamente la demanda durante el mes, la variabilidad observada de la demanda semanal y el costo unitario promedio de adquisición del producto. Los datos fueron obtenidos a partir de los movimientos del sistema de inventarios y de las órdenes de compra cerradas durante el periodo de estudio.

El área de planeación quiere determinar qué características podrían estar asociadas con los quiebres de inventario.

- **Registros:** 484  ·  **Temas:** Regresión simple y múltiple, variables en porcentaje, residuos.

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `quiebres_inventario_pct` | numérica | Proporción de eventos de demanda del periodo que no pudieron ser atendidos completamente con el inventario disponible. | % |
| `variabilidad_demanda_pct` | numérica | Coeficiente de variación de la demanda semanal del producto durante el periodo analizado. | % |
| `costo_unitario_miles` | numérica | Costo unitario promedio de adquisición del producto durante el periodo. | miles de pesos colombianos por unidad |

### IC09_proyectos_industriales

La oficina de proyectos de una empresa de ingeniería recopiló información de 512 proyectos y paquetes de trabajo cerrados durante los últimos tres años, incluyendo iniciativas de automatización, adecuación de instalaciones, implementación de sistemas y mejoramiento de procesos. Para cada proyecto se clasificó el resultado respecto al cronograma originalmente aprobado, se registró su nivel de complejidad, el esquema utilizado para conformar el equipo, el número de cambios formales de alcance aprobados durante la ejecución y el presupuesto inicialmente asignado.

El interés de la oficina es identificar qué características están asociadas con el cumplimiento del cronograma.

- **Registros:** 512  ·  **Temas:** χ² de independencia con variables ordinales (cronograma × complejidad, × esquema).

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `cumplimiento_cronograma` | categórica | Clasificación del resultado del proyecto respecto al cronograma originalmente aprobado. | A tiempo, Retraso moderado, Retraso alto |
| `complejidad_proyecto` | categórica | Nivel de complejidad asignado al proyecto durante su planeación inicial. | Baja, Media, Alta |
| `esquema_equipo` | categórica | Modalidad predominante utilizada para conformar el equipo responsable del proyecto. | Interno, Mixto, Tercerizado |
| `cambios_alcance` | numérica | Número de modificaciones formales al alcance aprobadas durante la ejecución del proyecto. | cambios aprobados por proyecto |
| `presupuesto_inicial_millones` | numérica | Presupuesto total aprobado para el proyecto al comienzo de su ejecución. | millones de pesos colombianos |

### IC10_consumo_combustible_flota

Una empresa de transporte terrestre consolidó información de 326 viajes de distribución realizados por su flota durante varios meses. Para cada viaje se calculó el consumo de combustible por cada 100 kilómetros recorridos a partir de los registros del sistema telemático y de abastecimiento. También se registraron el tipo de vehículo utilizado, el perfil predominante de la ruta, el día de la semana en que se inició el recorrido, la carga promedio transportada y los años de experiencia del conductor asignado.

El análisis busca determinar qué características están asociadas con el consumo de combustible.

- **Registros:** 326  ·  **Temas:** Regresión múltiple con variables categóricas (dummies), ANOVA.

| Variable | Tipo | Descripción | Categorías / unidad |
|---|---|---|---|
| `consumo_combustible_l_100km` | numérica | Consumo de combustible registrado durante el viaje, normalizado por cada 100 kilómetros recorridos. | L/100 km |
| `tipo_vehiculo` | categórica | Clase de vehículo utilizado para realizar el viaje de distribución. | Camion liviano, Camion mediano, Camion pesado |
| `perfil_ruta` | categórica | Caracterización general del relieve predominante en la ruta recorrida. | Plana, Mixta, Montañosa |
| `dia_semana` | categórica | Día de la semana en el que se inició el viaje. | Lunes, Martes, Miercoles, Jueves, Viernes, Sabado |
| `carga_promedio_ton` | numérica | Carga promedio transportada por el vehículo durante el recorrido. | toneladas |
| `experiencia_conductor_anios` | numérica | Tiempo acumulado de experiencia profesional del conductor en actividades de conducción de vehículos de carga. | años |

## Bases clásicas

Bases públicas muy usadas en la enseñanza de estadística. Se tradujeron al español los nombres de columnas y categorías y se citan sus fuentes originales.

### consumo_autos

Consumo de combustible de 398 modelos de automóviles fabricados entre 1970 y 1982.

- **Registros:** 398  ·  **Variables:** 10
- **Temas:** Regresión simple y múltiple, correlación, comparación de medias por origen (ANOVA), datos faltantes.
- **Calidad de datos:** `potencia_hp` tiene 6 valores faltantes (venían como "?"). Se agregó `km_por_litro` (= mpg × 0,425).
- **Fuente:** Quinlan, R. (1993). *Auto MPG* [Conjunto de datos]. UCI Machine Learning Repository. https://doi.org/10.24432/C5859H

### calidad_vinos

Propiedades fisicoquímicas y calificación sensorial de 6.497 vinos portugueses (vinho verde) tintos y blancos.

- **Registros:** 6.497  ·  **Variables:** 13
- **Temas:** Descriptiva bivariada, comparación de dos grupos (tinto vs. blanco), ANOVA por nivel de calidad, regresión múltiple.
- **Calidad de datos:** Sin faltantes. `calidad` es una escala ordinal (0–10) asignada por catadores.
- **Fuente:** Cortez, P., Cerdeira, A., Almeida, F., Matos, T. y Reis, J. (2009). *Wine Quality* [Conjunto de datos]. UCI Machine Learning Repository. https://doi.org/10.24432/C56S3T

### resistencia_concreto

Resistencia a la compresión de 1.030 mezclas de concreto según su composición y edad de curado.

- **Registros:** 1.030  ·  **Variables:** 9
- **Temas:** Regresión múltiple, relaciones no lineales (edad), correlación, control de calidad de materiales.
- **Calidad de datos:** Sin faltantes.
- **Fuente:** Yeh, I.-C. (1998). *Concrete Compressive Strength* [Conjunto de datos]. UCI Machine Learning Repository. https://doi.org/10.24432/C5PK67

### viviendas_california

Censo de 1990 de California: 20.640 bloques censales con características de vivienda e ingreso.

- **Registros:** 20.640  ·  **Variables:** 10
- **Temas:** Descriptiva con datos grandes, asimetría, datos censurados (tope en 500.001), regresión, mapas de dispersión.
- **Calidad de datos:** `total_dormitorios` tiene 207 faltantes. `valor_mediano_vivienda_usd` y `edad_mediana_vivienda_anios` están truncados en su máximo.
- **Fuente:** Pace, R. K. y Barry, R. (1997). Sparse spatial autoregressions. *Statistics & Probability Letters, 33*(3), 291–297. https://doi.org/10.1016/S0167-7152(96)00140-X

### energia_ciclo_combinado

9.568 registros horarios de una central térmica de ciclo combinado operando a plena carga (2006–2011).

- **Registros:** 9.568  ·  **Variables:** 5
- **Temas:** Regresión lineal múltiple (relación casi lineal y fuerte), correlación, intervalos de predicción.
- **Calidad de datos:** Sin faltantes. Reemplaza las cinco `muestra*.csv` originales, que eran la misma base con las filas en distinto orden.
- **Fuente:** Tüfekci, P. y Kaya, H. (2014). *Combined Cycle Power Plant* [Conjunto de datos]. UCI Machine Learning Repository. https://doi.org/10.24432/C5002N

### puntajes_examenes

Puntajes de 1.000 estudiantes en tres exámenes (datos ficticios con fines didácticos).

- **Registros:** 1.000  ·  **Variables:** 4
- **Temas:** Descriptiva, comparación de dos medias por género, correlación entre puntajes, normalidad.
- **Calidad de datos:** Datos simulados por el autor de la fuente. Se conservaron solo las 4 columnas del archivo original del repositorio.
- **Fuente:** spscientist (2018). *Students Performance in Exams* [Conjunto de datos]. Kaggle. https://www.kaggle.com/datasets/spscientist/students-performance-in-exams

### desempeno_matematicas

395 estudiantes de secundaria de dos colegios portugueses: datos sociodemográficos, hábitos y notas de matemáticas.

- **Registros:** 395  ·  **Variables:** 33
- **Temas:** Tablas de contingencia, χ², comparación de medias, ANOVA, regresión, variables ordinales.
- **Calidad de datos:** Sin faltantes. Las notas van de 0 a 20 (escala portuguesa). Hay ceros en `nota_final` que corresponden a estudiantes que no presentaron.
- **Fuente:** Cortez, P. (2008). *Student Performance* [Conjunto de datos]. UCI Machine Learning Repository. https://doi.org/10.24432/C5TG7T

### ventas_minorista

5.681 combinaciones producto-tienda de una cadena de supermercados, con características del producto y de la tienda.

- **Registros:** 5.681  ·  **Variables:** 11
- **Temas:** Limpieza de datos (faltantes, categoría `sin_dato`), descriptiva por grupos, ANOVA, tablas de contingencia.
- **Calidad de datos:** `peso_producto` tiene 976 faltantes y `tamano_tienda` tiene la categoría `sin_dato`: se dejaron así para practicar limpieza. `visibilidad_producto` tiene ceros que no son plausibles.
- **Fuente:** Analytics Vidhya (2016). *BigMart Sales Data* [Conjunto de datos]. Kaggle. https://www.kaggle.com/datasets/brijbhushannanda1979/bigmart-sales-data

### alquiler_bicicletas

Alquiler diario de bicicletas compartidas en Washington D.C. (731 días, 2011–2012) con información de clima y calendario.

- **Registros:** 731  ·  **Variables:** 16
- **Temas:** Series de tiempo descriptivas, comparación por estación (ANOVA), regresión con clima, conteos.
- **Calidad de datos:** Las variables de clima están normalizadas (0–1): temperatura = (t + 8)/47; sensación = (t + 16)/66; humedad = h/100; viento = v/67.
- **Fuente:** Fanaee-T, H. (2013). *Bike Sharing* [Conjunto de datos]. UCI Machine Learning Repository. https://doi.org/10.24432/C5W894

### seguro_medico

Cargos anuales de seguro médico de 1.338 asegurados en EE.UU. (datos simulados a partir de estadísticas del censo).

- **Registros:** 1.338  ·  **Variables:** 7
- **Temas:** Asimetría y transformaciones, comparación de medias (fumador vs. no), ANOVA por región, regresión múltiple con variables dummy.
- **Calidad de datos:** Sin faltantes. Los cargos son muy asimétricos a la derecha.
- **Fuente:** Lantz, B. (2013). *Machine Learning with R*. Packt. Datos publicados en Kaggle como *Medical Cost Personal Datasets*: https://www.kaggle.com/datasets/mirichoi0218/insurance

### publicidad_ventas

Ventas de un producto en 200 mercados y presupuesto de publicidad en TV, radio y prensa.

- **Registros:** 200  ·  **Variables:** 4
- **Temas:** Regresión simple y múltiple, interpretación de coeficientes, multicolinealidad.
- **Calidad de datos:** Sin faltantes.
- **Fuente:** James, G., Witten, D., Hastie, T. y Tibshirani, R. (2013). *An Introduction to Statistical Learning*. Springer. https://www.statlearning.com

## Bases de los talleres en R

- **clientes_tienda.csv**: Base de 600 clientes de una cadena de retail (datos sintéticos) usada en el taller de perfilamiento descriptivo (E1-02).
- **calidad_textil.csv**: Registro de 1.000 prendas inspeccionadas por una empresa textil (datos sintéticos) usado en el taller de inferencia sobre una muestra (E2-02).
