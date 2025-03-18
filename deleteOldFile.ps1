$Path = Read-Host "Saisissez le chemin vers le dossier a purger!"
#bug 27
Get-ChildItem -Path $path -Recurse -Force | Where-Object{ !$_.PSIsContainer -and $_. CreationTime -lt (Get-Date).AddDays(-15) } | Remove-Item -Force