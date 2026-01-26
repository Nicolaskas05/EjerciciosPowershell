Clear-Host
[int] $num = Read-Host "Introduce un número entero positivo"

$salida = @()
for ($i = 1; $i -le $n; $i++) {
    if ($i % 2 -ne 0) {
        $salida += $i
    }
}

Write-Host ($salida -join ", ")
