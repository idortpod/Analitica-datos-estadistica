# Bases sugeridas de Datos Abiertos Colombia

Lista de conjuntos de [datos.gov.co](https://www.datos.gov.co) útiles para proyectos de curso, para la actividad autónoma del laboratorio de Power BI (E1-01) o para crear nuevos laboratorios. Están agrupados por tema y con los análisis que permiten.

- Los identificadores directos provienen de las guías de los laboratorios y del catálogo del portal (consultado en noviembre de 2026).
- Para los temas marcados con 🔎 se da un enlace de **búsqueda** en el portal, porque la entidad publica varias versiones por año o por región y conviene elegir la más reciente.
- Antes de usar una base en clase revise su fecha de actualización, el número de registros y el diccionario de variables (pestaña *About* / *Acerca de*).

## Bases que ya usa el repositorio

| Base | Módulo | Enlace | Para qué sirve |
|---|---|---|---|
| Casos positivos de COVID-19 en Colombia | E1-01 | [gt2j-8ykr](https://www.datos.gov.co/Salud-y-Protecci-n-Social/Casos-positivos-de-COVID-19-en-Colombia-/gt2j-8ykr) | Descriptiva con millones de registros, dashboards, filtros por departamento |
| Accidentes de tránsito ocurridos en Bucaramanga | E1-03 | [7cci-nqqb](https://www.datos.gov.co/Transporte/3-Accidentes-de-Transito-ocurridos-en-el-Municipio/7cci-nqqb) | Probabilidad condicional, Bayes, tablas de contingencia, χ² |
| Embarazo en adolescentes | E1-04 | [dpcy-dq5j](https://www.datos.gov.co/Salud-y-Protecci-n-Social/Embarazo-en-adolescentes/dpcy-dq5j) | Modelos normal, binomial y exponencial; depuración de códigos especiales |

## Otras bases sugeridas

| Tema | Base | Enlace | Análisis sugeridos | Por qué es interesante para Ingeniería Industrial |
|---|---|---|---|---|
| Educación | Resultados Saber 11 (un periodo por base, p. ej. 2018-2) | [m2nt-jw2h](https://www.datos.gov.co/d/m2nt-jw2h) · 🔎 [otras](https://www.datos.gov.co/browse?q=Saber%2011) | Comparación de medias por tipo de colegio o zona (t, ANOVA), regresión, χ² con estrato | Bases grandes y limpias; permiten muestreo aleatorio dentro de la base |
| Educación | Resultados Saber Pro | 🔎 [buscar](https://www.datos.gov.co/browse?q=Saber%20Pro) | Comparación de programas de ingeniería, intervalos de confianza para medias | Comparar el desempeño de Ingeniería Industrial con otros programas |
| Calidad del agua | Índice de Riesgo de la Calidad del Agua (IRCA), 2016 | [pzfi-8kkn](https://www.datos.gov.co/d/pzfi-8kkn) · 🔎 [otros años](https://www.datos.gov.co/browse?q=IRCA) | Proporción de municipios con riesgo, χ² por departamento, distribución asimétrica | Indicadores de calidad y cumplimiento de norma |
| Compras públicas | SECOP II: procesos, contratos y ejecución | [catálogo de Colombia Compra Eficiente](https://www.colombiacompra.gov.co/archivos/app-datos-abiertos/secop-ii) · 🔎 [buscar](https://www.datos.gov.co/browse?q=SECOP%20II) | Distribuciones muy asimétricas (valor del contrato), transformación logarítmica, comparación por modalidad de contratación | Abastecimiento y compras, igual que el caso IC07 |
| Clima | Datos hidrometeorológicos del IDEAM (precipitación, temperatura) | 🔎 [buscar](https://www.datos.gov.co/browse?q=IDEAM%20hidrometeorol%C3%B3gicos) | Ajuste de distribuciones (gamma para lluvia), series de tiempo, correlación entre estaciones | Planeación de operaciones y riesgos climáticos |
| Movilidad local | Bases de Bucaramanga y su área metropolitana | 🔎 [buscar](https://www.datos.gov.co/browse?q=Bucaramanga) | Proyectos contextualizados en la región | Cercanía con los estudiantes; facilita la discusión del contexto |
| Empleo y empresas | Registros de empresas y Cámaras de Comercio | 🔎 [buscar](https://www.datos.gov.co/browse?q=c%C3%A1mara%20de%20comercio) | Descriptiva por sector, proporciones, χ² sector × tamaño | Estructura empresarial de la región |
| Energía y servicios públicos | Consumo y tarifas de servicios públicos | 🔎 [buscar](https://www.datos.gov.co/browse?q=energ%C3%ADa%20consumo) | Regresión del consumo, comparación por estrato | Gestión energética en planta (relaciona con IC02) |

## Cómo cargar una base directamente en Python

Los laboratorios E1-03 y E1-04 descargan la base sin pasar por el navegador. El mismo patrón sirve para cualquier base del portal; solo cambia el identificador de cuatro más cuatro caracteres (por ejemplo `7cci-nqqb`):

```python
import pandas as pd

ID = "7cci-nqqb"

# Base completa, con los nombres de columnas que muestra el portal
df = pd.read_csv(f"https://www.datos.gov.co/api/views/{ID}/rows.csv?accessType=DOWNLOAD", low_memory=False)

# Solo una parte (útil para bases muy grandes). Ojo: esta vía usa los nombres de
# columnas de la API (en minúsculas y sin espacios); consúltelos en la pestaña "API" del portal.
muestra = pd.read_csv(f"https://www.datos.gov.co/resource/{ID}.csv?$limit=50000")
```

En Colab funciona directamente. Para bases de millones de registros (como COVID-19) es mejor filtrar en el portal (*Ver datos → Filtrar → Exportar → CSV*) o usar el parámetro `$where` de la API.
