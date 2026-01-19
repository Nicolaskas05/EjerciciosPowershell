Clear-Host
[int] $num1 = Read-Host "Primer número"
[int] $num2 = Read-Host "Segundo número"
if ($num1 -lt $num2) {
    Write-Host "El número $num1 es menor que el $num2"
}
ElseIf ($num1 -eq $num2) {
    Write-Host "El número $num1 es igual que el $num2"
}
else {
    Write-Host "El número $num1 es mayor que el $num2"
}    