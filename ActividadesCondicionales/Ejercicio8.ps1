Clear-Host
$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo (M para mujer / H para hombre)"

$nombre = $nombre.Trim()
$sexo = $sexo.Trim().ToUpper()

$primeraLetra = $nombre.Substring(0,1).ToUpper()

$grupo = "B"

if ($sexo -eq "M") {
    if ($primeraLetra -lt "M") { $grupo = "A" }
}
elseif ($sexo -eq "H") {
    if ($primeraLetra -gt "N") { $grupo = "A" }
}
else {
    Write-Host "Sexo no válido. Usa M o H."
    exit
}

Write-Host "Te corresponde el grupo: $grupo"
