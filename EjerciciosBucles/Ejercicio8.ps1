Clear-Host
[int] $altura = Read-Host "Introduce la altura del triángulo de números."

for ($i = 1; $i -le $altura; $i++) {
    $linea = ""
    for ($j = 1; $j -le $i; $j++) {
        $linea += "$j "
    }
    Write-Host $linea
}