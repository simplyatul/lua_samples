--[[
 Print the time in particular timeZone 
 
 Refs:
 http://man7.org/linux/man-pages/man1/date.1.html
 https://stackoverflow.com/questions/9676113/lua-os-execute-return-value
 
]]

local handle = io.popen("TZ='America/New_York' date")
local result = handle:read("*a")
print(result) 
--[[ Prints complete date/time

Fri Apr  3 07:36:45 EDT 2020

]]

handle = io.popen("TZ=Canada/Pacific date +%B")
result = handle:read("*a")
print(result) -- Prints only Month

handle:close()
