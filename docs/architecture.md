# 🧠 Architecture fonctionnelle du Copilote OCÉAN-SENTINELLE

## 🔁 Schéma logique

```text
[Données externes]
    ↓
[Module d'intégration ABACODE]
    ↓
[Module de traduction GPT]
    ↓
[Scénarisation RCP + modèles impact]
    ↓
[Sorties : PDF, carte, tableau de bord]

```

## 🧩 Modules

- **Intégration** : fusion multi-domaines (pH, socio-éco)
- **Traduction IA** : simplification, visualisation
- **Simulation** : moteur de scénarios RCP + seuils
- **Interface** : export rapport, navigation par zone

## 📡 Connecteurs/API

- Ifremer (stations côtières)
- NOAA (observations acidification)
- Copernicus (physique régionale)
- INSEE, IGN (sociaux et spatiaux)
