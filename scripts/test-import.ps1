# scripts/test-import.ps1
Write-Host "📦 Test d'import des modules OCÉAN-SENTINELLE..."

# Définir la variable d'environnement pour inclure src
$env:PYTHONPATH = "..\src"

try {
    python -c "import integration; print('✅ import integration OK')"
    python -c "import simulation; print('✅ import simulation OK')"
    python -c "import traduction; print('✅ import traduction OK')"
    python -c "import utils; print('✅ import utils OK')"

    Write-Host "`n🎉 Tous les imports ont réussi." -ForegroundColor Green
}
catch {
    Write-Host "`n❌ Une erreur s'est produite lors de l'import des modules." -ForegroundColor Red
}
