while ($true) {
    Supprimer-FichiersTemporaires -dossier $tempFolder
    # Attendre 15 jours (en secondes)
    Start-Sleep -Seconds (15 * 24 * 60 * 60)
} 