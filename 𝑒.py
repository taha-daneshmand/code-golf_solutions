from decimal import Decimal, getcontext
getcontext().prec = 1001
print(Decimal(1).exp())
