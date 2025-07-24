# Documentation Scientifique et Méthodologique

## 🔢 Objectif du projet OCÉAN-SENTINELLE

Le Copilote OCÉAN-SENTINELLE est un outil d’aide à la décision pour anticiper et gérer les effets de l’acidification des océans sur le littoral de Nouvelle-Aquitaine. Il s’appuie sur une intégration rigoureuse de données océanographiques, biologiques, économiques et sociales selon la méthode ABACODE.

---

## 🔄 Méthodologie ABACODE

### INTEGRER : Données fusionnées multi-domaines

* **Physico-chimie** : pH, saturation aragonite (ΩArag), CO₂ dissous
* **Océanographie physique** : température, salinité, courants
* **Biologie marine** : biodiversité, espèces calcifiantes, maerl
* **Socio-économie** : ostréiculture, tourisme, emploi

### TRADUIRE : Conversion en impacts

* Seuils critiques (Findlay et al., 2025)
* Vulnérabilité écologique, économique, territoriale
* Cartographie des zones sensibles

### SIMULER : Raisonnement par scénarios

* RCP2.6, RCP4.5, RCP8.5 (GIEC)
* Simulation d’évolution des pH (CSV)
* Estimation d’impacts socio-économiques (JSON)

---

## 📊 Données principales

| Domaine         | Fichier                | Format  |
| --------------- | ---------------------- | ------- |
| pH projeté      | `pH_scenarios.csv`     | CSV     |
| Impacts         | `impacts_sociaux.json` | JSON    |
| Biodiversité    | `biodiversite.geojson` | GeoJSON |
| Config scénario | `abacode_config.json`  | JSON    |
| Sources API     | `datasources.yaml`     | YAML    |

---

## 🔧 Fonctionnalités clés du Copilote

* Traduction automatique des seuils à risques (via GPT)
* Génération de scénarios de gestion côtière
* Export de rapports vulgarisés pour les décideurs publics
* Intégration continue avec les flux Copernicus, NOAA, Ifremer

---

## 📖 Références

* Findlay et al. (2025) *Ocean Acidification: Another Planetary Boundary Crossed*
* Rockström et al. (2009), Steffen et al. (2015) *Planetary Boundaries*
* Ifremer, Copernicus Marine Service, NOAA OAP

---

## ✅ Mise à jour

* Document mis à jour le : 19 juillet 2025
* Responsable : Alejandro Tomas Trujillo Castro
