# 📁 Données - OCÉAN-SENTINELLE

## 🔹 raw/

- `ifremer/` : pH, température (stations littorales)
- `noaa_oap/` : ΩArag (saturation aragonite, NOAA)
- `copernicus/` : salinité, courant, température (modèles marins)

## 🔹 processed/

- `pH_scenarios.csv` : pH simulé pour les RCP (2040, 2060, 2100)
- `impacts_sociaux.json` : perte socio-économique estimée (emploi, conchyliculture)
- `biodiversite.geojson` : distribution géospatiale des espèces sensibles

## 🔹 metadata/

- `README_DATA.md` : Ce fichier de documentation

## 🧪 Format des fichiers

- `.csv` : UTF-8, séparateur `,`, 1ère ligne = en-têtes
- `.json` : format standard UTF-8
- `.geojson` : compatible QGIS, projections WGS84

## 🔁 Fréquence de mise à jour

- `raw/` : hebdomadaire ou mensuelle selon la source
- `processed/` : recalcul à chaque simulation ou MAJ seuils
