Clear-Host
$contraseña_correcta = "contraseña"

do {
    $contraseña_ingresada = Read-Host "Introduce la contraseña"
} while ($contraseña_ingresada -ne $contraseña_correcta)

Write-Host "Contraseña correcta."
