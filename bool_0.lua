local str = "abc "..tostring(false).." d"
print(str) --> abc false d

local f = true
str = "abc "..tostring(f).." d"
print(str) --> abc true d

local cnt = tostring(nil)
print(cnt) --> nil



