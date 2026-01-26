Clear-Host
[int] $num = Write-Host "Dime un número positivo"

$salida = @()
for ($i = $num; $i -ge 0; $i--) {
    $salida += $i
}

Write-Host ($salida -join ", ")