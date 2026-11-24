# Mapa curricular

Relación entre los temas de los cursos, los módulos del repositorio y las bases de datos. La columna **Sem.** es la semana sugerida en un semestre de 16 semanas.

## Estadística I

| Sem. | Tema | Módulo | Herramienta | Datos |
|---:|---|---|---|---|
| 2–4 | Tipos de variables, tablas de frecuencia, gráficos | E1-01 · Dashboards descriptivos | Power BI | COVID-19 (datos.gov.co) |
| 2–5 | Medidas de tendencia central, dispersión y forma | E1-02 · Perfilamiento de clientes | R + Otter | `clientes_tienda.csv` |
| 2–5 | Exploración libre de una base | H1 · Descriptiva con formularios | Python | cualquiera (`clasicos/`) |
| 5 | Análisis bivariado: contingencia, dispersión, correlación | E1-02 (secciones 5–9), H1 (sección 3) | R / Python | `clientes_tienda.csv`, `seguro_medico.csv` |
| 7–8 | Probabilidad condicional y teorema de Bayes | E1-03 · Bayes con accidentes | Python | Accidentes Bucaramanga (datos.gov.co) |
| 10–13 | Variables aleatorias y modelos (normal, uniforme, binomial, exponencial) | E1-04 · Modelos de probabilidad | Python | Embarazo adolescente (datos.gov.co) |
| 12–14 | Ajuste de distribuciones | H2 · Ajuste de distribuciones | Python | IC03, IC04, `consumo_autos.csv` |

## Estadística II (29006)

| Sem. | Tema | Módulo | Herramienta | Datos |
|---:|---|---|---|---|
| 1–3 | Distribuciones muestrales y Teorema del Límite Central | E2-01 · TLC por simulación | R + Otter | simulados |
| 4–6 | Inferencia sobre una media, una mediana y una proporción | E2-02 · Calidad textil | R + Otter | `calidad_textil.csv` |
| 4–12 | Consulta de pruebas e intervalos | H3 · Recetario de inferencia | Python | IC01, IC04, IC05, IC07 |
| 7–9 | Dos muestras (t de Student y de Welch, F, Mann-Whitney) y ANOVA | E2-03 · Dos muestras y ANOVA | Python | IC03, IC05, IC07 |
| 10–11 | Pruebas χ² de independencia y de bondad de ajuste | E2-04 · Pruebas χ² | Python | IC01, IC02, IC09 |
| 12–15 | Correlación, regresión simple y múltiple | E2-05 · Regresión lineal | Python | IC06, IC08, IC10 |

## Bases sin módulo asignado (para proyectos y ejercicios adicionales)

| Base | Uso sugerido |
|---|---|
| `IC04_productividad_linea_ensamble` | IC y prueba para una media; normalidad |
| `IC10_consumo_combustible_flota` | ANOVA de dos factores (tipo de vehículo × perfil de ruta) |
| `calidad_vinos`, `resistencia_concreto`, `energia_ciclo_combinado` | Regresión múltiple, proyecto final |
| `seguro_medico`, `desempeno_matematicas` | Comparación de grupos, χ², regresión con variables categóricas |
| `alquiler_bicicletas` | Descriptiva temporal, ANOVA por estación |
| `ventas_minorista`, `viviendas_california` | Limpieza de datos y faltantes |
