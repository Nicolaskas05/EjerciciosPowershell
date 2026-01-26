Clear-Host
[int] $num = Read-Host "Dime un número"

for ($i = 1; $i -le 10; $i++) {
    $res = $num * $i
    Write-Host "$num x $i = $res"
}