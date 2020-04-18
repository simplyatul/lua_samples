
a = {1,2,3,5} --> sequence => list w/o holes
print("Length: ", #a)	--> 4 => length operator works well on sequence only
a[#a + 1] = 9
print("Length: ", #a)	--> 5

print('---------------')
for n,v in pairs(a) do
	print(n,v)
end

print('---------------')

b = {11,22,nil,33,55}
print("Length: ", #b)	--> 5
b[#b + 1] = 99
print("Length: ", #b)	--> 6

print('---------------')
for n,v in pairs(b) do
	print(n,v)
end

print('---------------')

c = {}
c[1] = 1
print("Length: ", #c)	--> 1
c[10000] = 1
print("Length: ", #c)	--> 1

print('---------------')
for n,v in pairs(c) do
	print(n,v)
end
