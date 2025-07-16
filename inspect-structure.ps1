# === Script PowerShell : Inspection complète de l’arborescence (Corrigé) ===

# Définit le chemin de base comme étant le répertoire courant.
$basePath = Get-Location

Write-Output "📁 Inspection de la structure du dossier : $($basePath.Path)"
Write-Output "============================================================="
Write-Output ""

# --- Affichage de la structure des dossiers ---
Write-Output "📂 Liste des dossiers"
Write-Output "-------------------------------------------------------------"
# Récupère tous les dossiers de manière récursive et affiche leur chemin complet.
Get-ChildItem -Path $basePath -Recurse -Directory | ForEach-Object {
    Write-Output $_.FullName
}

Write-Output ""
Write-Output "📄 Détail des fichiers"
Write-Output "-------------------------------------------------------------"

# --- Collecte et affichage des détails des fichiers ---

# On stocke tous les objets 'fichier' dans un tableau avant de les afficher.
# C'est plus efficace que d'appeler Format-Table pour chaque fichier.
$fileDetails = Get-ChildItem -Path $basePath -Recurse -File | ForEach-Object {
    # Calcule le chemin relatif pour un affichage plus propre.
    $relativePath = $_.FullName.Replace($basePath.Path, ".")

    # Crée un objet personnalisé pour chaque fichier.
    # Les clés contenant des caractères spéciaux ou des espaces doivent être entre guillemets.
    [PSCustomObject]@{
        'Fichier'      = $relativePath
        'Extension'    = $_.Extension
        'Taille (Ko)'  = [math]::Round($_.Length / 1KB, 2)
        'Modifié le'   = $_.LastWriteTime
    }
}

# Affiche le tableau complet une fois que toutes les données ont été collectées.
# -AutoSize ajuste la largeur des colonnes pour une meilleure lisibilité.
if ($fileDetails) {
    $fileDetails | Format-Table -AutoSize
} else {
    Write-Output "Aucun fichier trouvé dans le répertoire."
}
