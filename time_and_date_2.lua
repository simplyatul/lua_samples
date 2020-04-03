--[[ 
	TimeDate Operations...
	Check if Curr Time/Date is between start-end Date
	Refs: 
		http://lua-users.org/wiki/OsLibraryTutorial
		https://stackoverflow.com/questions/36030418/lua-get-time-and-date-of-specific-time-zone
		http://lua-users.org/lists/lua-l/2009-05/msg00108.html
]]

startTime=0700
endTime=1600
startDate="2018-01-02"
endDate="2020-12-01"
months="[\"January\", \"February\"]"

dateRegEx="(%d+)-(%d+)-(%d+)"
local y,m,d=startDate:match(dateRegEx)
local sy, sm, sd = tonumber(y), tonumber(m), tonumber(d)
print(sy, sm, sd)

y,m,d=endDate:match(dateRegEx)
local ey, em, ed = tonumber(y), tonumber(m), tonumber(d)
print(ey, em, ed)

local handle = io.popen("TZ='America/New_York' date +%Y-%m-%d")
local currDate = handle:read("*a")
y,m,d=currDate:match(dateRegEx)
local cy, cm, cd = tonumber(y), tonumber(m), tonumber(d)
print(cy, cm, cd)

print('Checking if '.. 
	cy .. '-' ..cm.. '-' ..cd .. -- currDate
	' is between ' ..
	sy .. '-' ..sm.. '-' ..sd .. -- startDate
	' and '..
	ey .. '-' ..em.. '-' ..ed)	 -- endDate

-- Checking if 2020-4-3 is between 2018-1-2 and 2020-12-1
-- If dates are like above, following if block does not provide correct result.

local ans = false

if (cy >= sy and cy <= ed) then
	if (cm >= sm and cm <= em) then
		if (cd >= sd and cd <= ed) then
			ans=true
		end
	end
end 

print('Ans: ', ans)

-- This is the proper way ...

local sD = os.time({ year = sy, month = sm, day = sd })
local eD = os.time({ year = ey, month = em, day = ed })
local cD = os.time({ year = cy, month = cm, day = cd })

print('Checking if '..cD..' is between '..sD..' and '..eD)

ans=false
if(cD >= sD and cD <= eD) then
	ans=true
end

print('Ans: ', ans)
