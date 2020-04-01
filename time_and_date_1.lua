--[[ 
	TimeDate Operations...
	Refs: 
		http://lua-users.org/wiki/OsLibraryTutorial
		https://stackoverflow.com/questions/36030418/lua-get-time-and-date-of-specific-time-zone
]]

print("---------------------------")
t = os.date('*t')  -- time now
print("Curr Date/Time Breakdown in Local Time")
table.foreach(os.date('*t'), print)
print("---------------------------")
print("Curr Date/Time Breakdown in UTC")
table.foreach(os.date('!*t'), print)
print("---------------------------")

tz = {}
tz["UTC"] = 0
tz["IST"] = (5*60*60) + (30*60)
tz["MST"] = -(7*60*60)

for k, v in pairs(tz) 
do 
	t = os.date( "!%a %b %d, %H:%M:%S", os.time() + v)
	print("Curr Time in ", k, ": ", t)
	
end
