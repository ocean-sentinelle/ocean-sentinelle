# 🧩 Documentation `config/`

Fichiers de configuration utilisés par le moteur OCÉAN-SENTINELLE.

## 🔧 Fichiers

- `manifest.yaml`  
  Métadonnées du projet (nom, version, description, auteurs)  
  ➤ Mise à jour : à chaque changement de périmètre fonctionnel.

- `abacode_config.json`  
  Seuils critiques (pH < 7.9, ΩArag < 1.5), unités, scénarios RCP supportés  
  ➤ Mise à jour : mensuelle ou à l’arrivée de nouvelles données.

- `datasources.yaml`  
  Références vers les sources de données :  
  - Ifremer (<https://data.ifremer.fr>)  
  - NOAA OAP (<https://oceanacidification.noaa.gov>)  
  - Copernicus Marine (<https://marine.copernicus.eu>)  
  ➤ Mise à jour : dès qu'une source est ajoutée/obsolète.

## 📝 Exemple abacode_config.json

```json
{
  "variables": {
    "pH": {"seuil_critique": 7.9},
    "OmegaArag": {"seuil_critique": 1.5}
  },
  "indicateurs": ["ostreiculture", "biodiversite", "emploi"]
}
```
