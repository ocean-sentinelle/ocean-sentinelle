#!/bin/bash
git clone https://github.com/ocean-sentinelle/ocean-sentinelle.git
cd ocean-sentinelle
cp -r ../ocean-sentinelle-config/* .
git add .
git commit -m "Ajout de la structure de configuration minimale Copilote OCEAN-SENTINELLE"
