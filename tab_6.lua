
-- traverse all key–value pairs in a table with the pairs iterator

t = {10, print, x = 12, k = "hi"}

print('Traverse table using pairs operator') 
for k, v in pairs(t) do
	print(k, v)
end
print('--------------------')

print('What if ipairs used to traverse table') 
for k, v in ipairs(t) do
	print(k, v)
end

print('--------------------')

-- For lists, we can use the ipairs iterator
print('Traverse list using ipairs operator') 
t = {10, print, 12, "hi"}

for k, v in ipairs(t) do
	print(k, v)
end

print('--------------------')

print('Another way to traverse a sequence is with a numerical for')
t = {10, print, 12, "hi"}

for k = 1, #t do
	print(k, t[k])
end

