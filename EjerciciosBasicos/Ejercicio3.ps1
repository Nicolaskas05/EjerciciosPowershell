[int] $horas = Read-Host "Cuantas horas has trabajado?"
[int] $coste_hora = Read-Host "Cuanto cuesta cada hora?"
$salario = $horas * $coste_hora
Write-Host "El salario que debe pagarle es $salario"