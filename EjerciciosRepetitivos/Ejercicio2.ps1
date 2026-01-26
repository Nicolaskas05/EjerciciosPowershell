Clear-Host
$usuarios = Import-Csv -Path "usuarios.csv"

foreach ($usuario in $usuarios) {
    Write-Host "Nombre: $($usuario.nombre) $($usuario.apellido), Grupo: $($usuario.grupo)"
}
0