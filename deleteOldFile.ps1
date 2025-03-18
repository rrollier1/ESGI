
while ($true) {
    Supprimer-FichiersTemporaires -dossier $tempFolder
    # Attendre 15 jours (en secondes)
    Start-Sleep -Seconds (15 * 24 * 60 * 60)
} 
=======
# Chemin du dossier temporaire
$tempFolder = "C:\Path\To\Temp\Folder"  # Remplacez par le chemin de votre dossier temporaire

# Fonction pour supprimer les fichiers temporaires
function Supprimer-FichiersTemporaires {
    param (
        [string]$dossier
    )

    try {
        # Supprimer tous les fichiers et dossiers dans le répertoire spécifié
        Get-ChildItem -Path $dossier -Recurse | Remove-Item -Force -Recurse
        Write-Output "Fichiers temporaires supprimés dans $dossier"
    } catch {
        Write-Output "Erreur lors de la suppression des fichiers : $_"
    }
}
