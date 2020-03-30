-- Demonstrate OS related APIs
-- Ref: https://www.lua.org/pil/22.1.html

print("Path: ", os.getenv("PATH"))

print("Month: ", os.date("%b"))
print("Weekday name : ", os.date("%a"), os.date("%A"))
print("Month Digit: ", os.date("%m"))
print("day of the month: ", os.date("%d"))
print("Date: ", os.date("%x"))

print("Time: ", os.time())

local temp =  os.date("*t", os.time())

require 'pl.pretty'.dump(temp)

