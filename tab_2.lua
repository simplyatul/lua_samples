
a = {}

for i = 1, 5 do a[i] = i*i end
a["x"] = 10
a.x=10		-- same as above. Table index by the string "x"
			-- a.x is syntactic sugar for a["x"].

x=7
a[x]=49		-- table indexed by the value of variable x

for n,v in pairs(a) do
	print(n,v)
end

--[[
O/P

1       1
2       4
3       9
4       16
5       25
7		49
x       10


--]]
print(a[0])	--> nil
print(a[-1])	--> nil
print(a[6])	--> nil

