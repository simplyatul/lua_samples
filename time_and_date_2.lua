--[[ 
	TimeDate Operations...
	Check if Curr Time/Date is between 
		- start-end Date
		- start-end Time
	Refs: 
		http://lua-users.org/wiki/OsLibraryTutorial
		https://stackoverflow.com/questions/36030418/lua-get-time-and-date-of-specific-time-zone
]]

startTime=0700
endTime=1600
startDate="2018-01-02"
endDate="2020-12-01"
months="[\"January\", \"February\"]"

dateRegEx="(%d+)-(%d+)-(%d+)"
sy, sm, sd = startDate:match(dateRegEx)
print(sy, sm, sd)
