-- Demonstrate alterntive to Ternary Operator

local td = nil

--print ("TD is " .. ((nil == td) ? td : "nil"))
print ("TD is " .. (td and td or "nil"))
print ("TD is " .. (td or "Empty"))

td = 1
print ("TD is " .. (td and td or "nil"))
print ("TD is " .. (td or "Empty"))

x = 10
print('x is ' .. (x < 0 and 'negative' or 'non-negative'))

