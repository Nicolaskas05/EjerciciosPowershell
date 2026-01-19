Clear-Host
$puntos = Read-Host "Introduce tu puntuación (0.0, 0.4, 0.6 o más)"
$puntos = [double]$puntos

$nivel = ""
$dinero = 0

if ($puntos -eq 0.0) {
    $nivel = "Inaceptable"
}
elseif ($puntos -eq 0.4) {
    $nivel = "Aceptable"
}
elseif ($puntos -ge 0.6) {
    $nivel = "Meritorio"
}
else {
    Write-Host "Puntuación no válida. Debe ser 0.0, 0.4 o 0.6 o más."
    exit
}

$dinero = 2400 * $puntos

Write-Host "Nivel de rendimiento: $nivel"
Write-Host "Cantidad de dinero: $dinero €"
