# © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

from decimal import Decimal, getcontext

getcontext().prec = 1005

sqrt_5 = Decimal(5).sqrt()
phi = (Decimal(1) + sqrt_5) / Decimal(2)

phi_str = str(phi)
print(phi_str[:1002])
