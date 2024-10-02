# © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

function Get-Divisors {
    param($m, $i)
    if ($m -eq 0) { return @() }
    if ($i % $m -eq 0) { return @(Get-Divisors ($m - 1) $i) + $m }
    return @(Get-Divisors ($m - 1) $i)
}

for ($i = 1; $i -le 100; $i++) {
    $divisors = Get-Divisors $i $i
    Write-Output ($divisors -join " ")
}
