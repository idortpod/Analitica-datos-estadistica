# Datos

| Carpeta / archivo | Contenido |
|---|---|
| [`CATALOGO.md`](CATALOGO.md) | Ficha de cada base: fuente, tamaño, variables, temas sugeridos y problemas de calidad conocidos. **Empiece aquí.** |
| `casos_industriales/csv/` | 10 casos sintéticos de ingeniería industrial (IC01–IC10) en CSV, para Python y R. |
| `casos_industriales/xlsx/` | Los mismos casos en Excel: hoja `contexto` (enunciado y diccionario) y hoja `datos`. Útiles para entregar a los estudiantes o para Power BI. |
| `clasicos/` | 11 bases públicas muy usadas en la enseñanza de estadística, traducidas al español y con su fuente citada. |
| `talleres/` | Bases de los talleres de R (`clientes_tienda.csv`, `calidad_textil.csv`). |
| `diccionarios/` | Un CSV por base con `variable`, `tipo`, `descripcion` y `categorias_o_unidad`. |
| [`DATOS_ABIERTOS_COLOMBIA.md`](DATOS_ABIERTOS_COLOMBIA.md) | Bases sugeridas de datos.gov.co para proyectos y cómo cargarlas desde Python. |

## Convenciones

- Codificación UTF-8, separador coma, punto decimal.
- Nombres de columnas en minúscula, sin tildes y con guion bajo (`tiempo_reparacion_min`). La unidad va al final del nombre cuando aplica (`_min`, `_mpa`, `_pct`, `_miles`).
- Los faltantes son celdas vacías. No se imputaron valores: las bases que tienen faltantes los conservan para practicar limpieza (ver el catálogo).

## Leer una base

```python
import pandas as pd
df = pd.read_csv("datos/casos_industriales/csv/IC05_resistencia_proveedores.csv")
dic = pd.read_csv("datos/diccionarios/IC05_resistencia_proveedores.csv")
```

```r
df <- read.csv("datos/casos_industriales/csv/IC05_resistencia_proveedores.csv")
```
