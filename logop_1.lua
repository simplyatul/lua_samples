v=10
x={1, true, false}
for n, v in pairs(x) do 
	--print(n,v)
	k = x[n] or v
	print(type(x[n]), k)
end

--[[
Above for loop prints

number  1
boolean true
boolean false

Not sure why k evaluates to false in last line ???
--]]

print('----------------------')

x = false
x = x or v
print('x: ', x)	--> 10 if x is false/nil

print('----------------------')

x = false
if not x then x = v end
print('x: ', x)	--> 10 if x is false/nil

