Clear-Host
$passGuardada = "MiClave123"

$passUsuario = Read-Host "Introduce la contraseña"

if ($passUsuario.ToLower() -eq $passGuardada.ToLower()) {
    Write-Host "Contraseña correcta"
} else {
    Write-Host "Contraseña incorrecta"
}
