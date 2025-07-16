# === Script de mise à jour de la structure OCÉAN-SENTINELLE ===

# 1. Créer le sous-module Python
$submodulePath = "src\ocean_sentinelle"
if (-not (Test-Path $submodulePath)) {
    New-Item -Path $submodulePath -ItemType Directory | Out-Null
    New-Item -Path "$submodulePath\__init__.py" -ItemType File | Out-Null
    Write-Host "✅ Module Python 'src/ocean_sentinelle' créé."
}

# 2. Déplacer setup.sh dans scripts/
$scriptsPath = "scripts"
if (-not (Test-Path $scriptsPath)) {
    New-Item -Path $scriptsPath -ItemType Directory | Out-Null
}
if (Test-Path "setup.sh") {
    Move-Item -Path "setup.sh" -Destination "$scriptsPath\setup.sh" -Force
    Write-Host "🔁 setup.sh déplacé dans scripts/"
}

# 3. Ajouter pyproject.toml pour future publication
$pyprojectPath = "pyproject.toml"
if (-not (Test-Path $pyprojectPath)) {
@"
[build-system]
requires = ["setuptools"]
build-backend = "setuptools.build_meta"

[project]
name = "ocean-sentinelle"
version = "0.1.0"
description = "Outil IA de simulation et résilience littorale face à l'acidification"
authors = [{ name = "Alejandro Tomas Trujillo Castro", email = "contact@ocean-sentinelle.org" }]
readme = "README.md"
requires-python = ">=3.9"
"@ | Out-File -FilePath $pyprojectPath -Encoding UTF8
    Write-Host "📄 pyproject.toml généré."
}
