Clear-Host
Write-Host "Bienvenido a la pizzería Bella Napoli"
$tipo = Read-Host "¿Quieres una pizza vegetariana? (si/no)"
$tipo = $tipo.ToLower()

$ingredientes = @("Tomate", "Mozzarella")

if ($tipo -eq "si") {
    Write-Host "Ingredientes vegetarianos disponibles:"
    Write-Host "1 - Pimiento"
    Write-Host "2 - Tofu"

    $opcion = Read-Host "Elige un ingrediente (1 o 2)"

    if ($opcion -eq "1") {
        $ingredientes += "Pimiento"
    }
    elseif ($opcion -eq "2") {
        $ingredientes += "Tofu"
    }
    else {
        Write-Host "Opción no válida"
        exit
    }

    $esVegetariana = "Sí"
}
elseif ($tipo -eq "no") {
    Write-Host "Ingredientes no vegetarianos disponibles:"
    Write-Host "1 - Peperoni"
    Write-Host "2 - Jamón"
    Write-Host "3 - Salmón"

    $opcion = Read-Host "Elige un ingrediente (1, 2 o 3)"

    if ($opcion -eq "1") {
        $ingredientes += "Peperoni"
    }
    elseif ($opcion -eq "2") {
        $ingredientes += "Jamón"
    }
    elseif ($opcion -eq "3") {
        $ingredientes += "Salmón"
    }
    else {
        Write-Host "Opción no válida"
        exit
    }

    $esVegetariana = "No"
}
else {
    Write-Host "Debes responder si o no"
    exit
}

Write-Host ""
Write-Host "Pizza vegetariana: $esVegetariana"
Write-Host "Ingredientes:"
$ingredientes | ForEach-Object { Write-Host "- $_" }
