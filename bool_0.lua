local str = "abc "..tostring(false).." d"
print(str) 

local f = false
str = "abc "..tostring(f).." d"
print(str) 

local cnt = tostring(nil)
print(cnt)

