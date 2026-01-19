Clear-Host
[int] $num1 = Read-Host "Primer número"
[int] $num2 = Read-Host "Segundo número"

[int] $calc = Read-Host "******CALCULADORA******

    1.Sumar
    2.Restar
    3.Multiplicar
    4.Dividir

¿Qué desea hacer? Elige una opción"

Switch ($calc) {
    1 {
    $suma = $num1 + $num2 
        Write-Host "La suma es $suma"
        }
    2 { 
    $resta = $num1 - $num2
        Write-Host "La resta es $resta"
        }
    3 {
    $multi = $num1 * $num2
        Write-Host "La multiplicación es $multi"   
        }
    4 {
    $division = $num1 / $num2
        Write-Host "La division es $division"
        }
}