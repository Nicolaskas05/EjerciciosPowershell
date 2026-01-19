Clear-Host
$fichero = Read-Host "Introduce el fichero"

if (Test-Path $fichero) {
    Write-Host "El fichero existe"
    }
else {
    Write-Host "El fichero no existe"
    }
