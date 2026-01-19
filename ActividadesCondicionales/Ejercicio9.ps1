Clear-Host
$renta = Read-Host "Introduce tu renta anual (€)"
$renta = [double]$renta

if ($renta -lt 10000) {
    $tipo = 5
}
elseif ($renta -le 20000) {
    $tipo = 15
}
elseif ($renta -le 35000) {
    $tipo = 20
}
elseif ($renta -le 60000) {
    $tipo = 30
}
else {
    $tipo = 45
}
Write-Host "Tu tipo impositivo es: $tipo `%"
