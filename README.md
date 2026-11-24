# Estadística con analítica de datos · Ingeniería Industrial UIS

Repositorio de material didáctico para **Estadística I** (descriptiva y probabilidad) y **Estadística II** (29006, inferencia) del programa de Ingeniería Industrial de la Universidad Industrial de Santander.

Cada recurso tiene tres componentes:

1. **Lectura para el profesor**: el `README.md` del módulo (objetivos, conceptos, resultados esperados y puntos de discusión).
2. **Base de datos pública**: en la carpeta `datos/` o descargada de Datos Abiertos Colombia.
3. **Ejercicios para los estudiantes**: notebooks de Python o R, o una guía de Power BI.

## Contenido

| Módulo | Tema | Herramienta | Datos | Solucionario |
|---|---|---|---|:---:|
| **00 · Herramientas** | | | | |
| [H1](00_herramientas) | Descriptiva con formularios (sin programar) | Python | cualquiera | — |
| [H2](00_herramientas) | Ajuste de distribuciones de probabilidad | Python | cualquiera | — |
| [H3](00_herramientas) | Recetario de inferencia: pruebas e intervalos | Python | casos industriales | — |
| **01 · Estadística I** | | | | |
| [E1-01](01_estadistica_I/E1-01_descriptiva_powerbi) | Dashboards descriptivos | Power BI | COVID-19 (datos.gov.co) | notas |
| [E1-02](01_estadistica_I/E1-02_perfilamiento_clientes_R) | Perfilamiento de clientes | R + Otter | `clientes_tienda.csv` | ✔ |
| [E1-03](01_estadistica_I/E1-03_bayes_accidentes) | Teorema de Bayes | Python | Accidentes Bucaramanga (datos.gov.co) | ✔ |
| [E1-04](01_estadistica_I/E1-04_modelos_probabilidad) | Modelos de probabilidad | Python | Embarazo adolescente (datos.gov.co) | ✔ |
| **02 · Estadística II** | | | | |
| [E2-01](02_estadistica_II/E2-01_TLC_simulacion_R) | Teorema del Límite Central por simulación | R + Otter | simulados | ✔ |
| [E2-02](02_estadistica_II/E2-02_inferencia_una_muestra_R) | Inferencia sobre una media, una mediana y una proporción | R + Otter | `calidad_textil.csv` | ✔ |
| [E2-03](02_estadistica_II/E2-03_dos_muestras_y_anova) | Dos muestras y ANOVA | Python | IC03, IC05, IC07 | ✔ |
| [E2-04](02_estadistica_II/E2-04_chi_cuadrado) | Pruebas χ²: independencia y bondad de ajuste | Python | IC01, IC02, IC09 | ✔ |
| [E2-05](02_estadistica_II/E2-05_regresion_lineal) | Correlación y regresión lineal | Python | IC06, IC08, IC10 | ✔ |

La secuencia sugerida y la relación de cada módulo con los temas del curso están en [MAPA_CURRICULAR.md](MAPA_CURRICULAR.md).

## Estructura

```
├── README.md                ← este archivo
├── GUIA_DOCENTE.md          ← cómo usar un recurso en clase (Colab, Otter, entregas)
├── MAPA_CURRICULAR.md       ← tema × módulo × herramienta × datos
├── CREDITOS.md              ← autoría, fuentes y licencia
├── CAMBIOS.md               ← correcciones hechas al material original
├── requirements.txt         ← librerías de Python (para uso local)
├── 00_herramientas/         ← notebooks reutilizables con cualquier base
├── 01_estadistica_I/        ← un módulo por carpeta
├── 02_estadistica_II/
│   └── E2-03_.../
│       ├── README.md        ← lectura para el profesor
│       ├── estudiante/      ← lo que se entrega a los estudiantes
│       ├── docente/         ← solucionario (no compartir)
│       └── evaluacion/      ← rúbrica (cuando aplica)
├── datos/                   ← bases, diccionarios, catálogo y lista de datos abiertos
└── docs/                    ← instructivo docente original de los laboratorios
```

## Inicio rápido

1. Abra el `README.md` del módulo que va a usar.
2. Suba a Google Colab el notebook de la carpeta `estudiante/` (*Archivo → Subir notebook*) o compártalo desde Google Drive.
3. Entregue a los estudiantes el notebook y los archivos que indique el README (una base CSV o un `anexos.zip`).
4. Use la carpeta `docente/` para preparar la clase y para calificar.

Los notebooks de Python también funcionan en Jupyter local: instale las librerías con `pip install -r requirements.txt` y ejecute el notebook desde su carpeta (los notebooks encuentran solos los archivos de `datos/`).

**Responsable:** Iván David Ortiz Pineda, Escuela de Estudios Industriales y Empresariales, UIS.
