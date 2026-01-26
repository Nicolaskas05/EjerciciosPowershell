Clear-Host
function suma {
    param([int]$num1, [int]$num2)
    return $num1 + $num2
}

function resta {
    param([int]$num1, [int]$num2)
    return $num1 - $num2
}

function multiplicar {
    param([int]$num1, [int]$num2)
    return $num1 * $num2
}

function dividir {
    param([int]$num1, [int]$num2)
    if ($num2 -eq 0) {
        Write-Host "No se puede dividir entre cero."
    } else {
        return $num1 / $num2
    }
}

do {
    Write-Host "****** CALCULADORA ******"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"

    $opcion = Read-Host "¿Qué desea hacer? Elige una opción"

    if ($opcion -ne 5) {
        $num1 = Read-Host "Introduzca el primer número" | ForEach-Object { [int]$_ }
        $num2 = Read-Host "Introduzca el segundo número" | ForEach-Object { [int]$_ }
    }

    switch ($opcion) {
        1 { Write-Host "Resultado: $(suma $num1 $num2)" }
        2 { Write-Host "Resultado: $(resta $num1 $num2)" }
        3 { Write-Host "Resultado: $(multiplicar $num1 $num2)" }
        4 { Write-Host "Resultado: $(dividir $num1 $num2)" }
        5 { Write-Host "Saliendo de la calculadora..." }
        default { Write-Host "Opción no válida. Intenta de nuevo." }
    }
} while ($opcion -ne 5)
