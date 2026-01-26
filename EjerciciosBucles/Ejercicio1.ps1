Clear-Host
$nombre = Read-Host "Dime tu nombre"
[int] $num = Read-Host "Dime un número"

for ($i = 1; $i -le $n; $i++) {
    Write-Host $nombre
}