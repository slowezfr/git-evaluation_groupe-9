param([int]$n = 5)

$ops = @('+', '-', '*', '/')
for ($i = 0; $i -lt $n; $i++) {
    $a = Get-Random -Minimum 1 -Maximum 100
    $b = Get-Random -Minimum 1 -Maximum 100
    $op = Get-Random -InputObject $ops
    Write-Output "$a$op$b"
}
