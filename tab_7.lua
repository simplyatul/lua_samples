-- Safe Navigation: Courtesy Programming in Lua, 4th Edition

--[[ 

When the level of nested tables gets deeper, notion of null check becomes problematic

zip = company and company.director and
		company.director.address and
			company.director.address.zipcode

In C#, there is safe navigation operator ?.

	zip = company?.director?.address?.zipcode

This notation is not only cumbersome, but inefficient, too. 
It performs six table accesses in a successful access, instead of three.

Lua does not offer any such operator, but in Lua (a or {}) evaluates to empty table if a is nil.
This technique can be used for safe navigation 

]]
b = a or {}
print('b: ', b) --> table: <some address 0xXXXXX>
print(b.x) 		--> nil => b.<anything> will be nil


zip = (((company or {}).director or {}).address or {}).zipcode
print('zip: ', zip)		--> nil

-- we can make it a little shorter and slightly more efficient

E = {}
zip = (((company or E).director or E).address or E).zipcode
print('zip: ', zip)		--> nil

--[[
Granted, this syntax is more complex than the one with the safe navigation operator. Nevertheless, we
write each field name only once, it performs the minimum required number of table accesses (three, in this
example), and it requires no new operators in the language. In my personal opinion, it is a good enough
substitute
--]]



 


