Clear-Host
$ruta = Read-Host "Escribe una ruta (carpeta)"

if (Test-Path $ruta -PathType Container) {
    Write-Host "Es un directorio. Contenido (recursivo):"
    Get-ChildItem -Path $ruta -Recurse | Select-Object FullName
} else {
    Write-Host "Eso no es un directorio (o no existe)."
}
