i = 10; j = "10"; k = "+10"
a = {}
a[i] = "number key"
a[j] = "string key"
a[k] = "another string key"

print(a[i])		--> number key
print(a[j])		--> string key
print(a[k])		--> another string key

print(a[tonumber(i)])		--> number key
print(a[tonumber(j)])		--> number key

a[2.0] = 10
a[2.1] = 20

print(a[2.0])		--> 10
print(a[2])			--> 10
print(a[2.1])		--> 20

print('---------------')

for n,v in pairs(a) do
	print(n,v)
end