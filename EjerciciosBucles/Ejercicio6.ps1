Clear-Host
[int] $numero = 42

Write-Host "Adivina el número entre el 0 y el 100"

do {
    $num_usu = Read-Host "Introduce un número"
    if ($num_usu -lt $numero) {
        Write-Host "El número es mayor"
    } elseif ($num_usu -gt $numero) {
        Write-Host "El número es menor"
    }

} while ($num_usu -ne $numero)
Write-Host "Felicidades, has adivinado el número $numero."

