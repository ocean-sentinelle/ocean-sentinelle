#!/bin/bash

echo "🚀 Déploiement du projet OCÉAN-SENTINELLE..."

# Étape 1 : Cloner le dépôt si non présent
if [ ! -d "ocean-sentinelle" ]; then
  git clone https://github.com/ocean-sentinelle/ocean-sentinelle.git
  cd ocean-sentinelle || exit
else
  cd ocean-sentinelle || exit
  git pull
fi

# Étape 2 : Création environnement virtuel
if [ ! -d ".venv" ]; then
  echo "⚙️ Création de l'environnement virtuel..."
  python3 -m venv .venv
fi

# Activation
source .venv/bin/activate

# Étape 3 : Installation des dépendances
if [ -f "requirements.txt" ]; then
  echo "📦 Installation des dépendances..."
  pip install -r requirements.txt
else
  echo "❗ Fichier requirements.txt non trouvé."
fi

# Étape 4 : Initialisation des répertoires
mkdir -p data/raw data/processed data/metadata
mkdir -p config notebooks tests

# Étape 5 : Vérification de cohérence minimale
echo "🔍 Vérification de configuration..."
if [ -f "config/abacode_config.json" ]; then
  echo "✅ Fichier abacode_config.json trouvé."
else
  echo "⚠️  Fichier config/abacode_config.json manquant."
fi

# Étape 6 : Exécution des tests (optionnel)
if [ -d "tests" ]; then
  echo "🧪 Lancement des tests..."
  pytest tests/
fi

echo "✅ Déploiement terminé. Le projet est prêt à l’usage."
