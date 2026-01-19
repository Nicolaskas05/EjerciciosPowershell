[int] $num1 = Read-Host "Introduce un número: "
[int] $num2 = Read-Host "Introduce otro número: "

$suma = $num1 + $num2
$resta = $num1 - $num2
$multi = $num1 * $num2
$division = $num1 / $num2
$resto = $num1 % $num2

Write-Host "El resultado de la suma es $suma"
Write-Host "El resultado de la resta es $resta"
Write-Host "El resultado de la multiplicacion es $multi"
Write-Host "El resultado de la division es $division"
Write-Host "El resto es $resto"