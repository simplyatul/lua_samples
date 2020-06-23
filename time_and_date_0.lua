-- Demonstrate OS related APIs
-- Ref: https://www.lua.org/pil/22.1.html

year=1970
month=1
day=1
hour=0
min=0
sec=0
wday = 'Monday'

-- year = year, month = month, day = day,
print("Time: ", os.time({ year = year, month = month, day = day, hour = hour, min = min, sec = sec }))

local temp =  os.date("*t", os.time({ year = year, month = month, day = day, hour = hour, min = min, sec = sec }))
require 'pl.pretty'.dump(temp)
print('-----------------------')
-- print(tostring(require 'pl.pretty'.write(temp)))

print('Curr Date/Time')
local currDate = os.date("*t", os.time())
require 'pl.pretty'.dump(currDate)
print(currDate, currDate.month)

print("Month: ", os.date("%b"))
print("Weekday name : ", os.date("%a"), os.date("%A"))
print("Month Digit: ", os.date("%m"))
print("day of the month: ", os.date("%d"))
print("Date: ", os.date("%x"))

print("Path: ", os.getenv("PATH"))
