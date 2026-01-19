Clear-Host
$nombreusu = $env:USERNAME
$directorio = Get-Location
$nombredominio = $env:USERDOMAIN
$equipo = $env:COMPUTERNAME

Write-Host "Hola $nombreusu"
Write-Host "Tu directorio de trabajo es $directorio"
Write-Host "Perteneces al dominio $nombredominio"
Write-Host "Tu equipo se llama $equipo"