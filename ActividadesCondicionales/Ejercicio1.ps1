Clear-Host
[int] $num = Read-Host "Introduce un número"

If ($num % 2 -eq 0) {
    Write-Host "El número es par"
}
else {
    Write-Host "El número es impar"
}