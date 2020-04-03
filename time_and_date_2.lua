--[[ 
	TimeDate Operations...
	Check if Curr Date/Time is between start-end Date/Time
	Refs: 
		http://lua-users.org/wiki/OsLibraryTutorial
		https://stackoverflow.com/questions/36030418/lua-get-time-and-date-of-specific-time-zone
		http://lua-users.org/lists/lua-l/2009-05/msg00108.html
]]

startDate="2018-01-02"
endDate="2020-12-01"

dateRegEx="(%d+)-(%d+)-(%d+)"
y,m,d=startDate:match(dateRegEx)
sy, sm, sd = tonumber(y), tonumber(m), tonumber(d)
print('startDate: ', sy, sm, sd)

y,m,d=endDate:match(dateRegEx)
ey, em, ed = tonumber(y), tonumber(m), tonumber(d)
print('endDate: ', ey, em, ed)

dateTimeRegEx="(%d+)-(%d+)-(%d+)-(%d+)-(%d+)"
handle = io.popen("TZ='America/New_York' date +%Y-%m-%d-%H-%M")
currDate = handle:read("*a")
print('Current Date: ', currDate)
y,m,d,h,mi=currDate:match(dateTimeRegEx)
cy, cm, cd, ch, cmi = tonumber(y), tonumber(m), tonumber(d), tonumber(h), tonumber(mi)
print(cy, cm, cd, ch, cmi)

print('Checking if '.. 
	cy .. '-' ..cm.. '-' ..cd .. -- currDate
	' is between ' ..
	sy .. '-' ..sm.. '-' ..sd .. -- startDate
	' and '..
	ey .. '-' ..em.. '-' ..ed)	 -- endDate

-- Checking if 2020-4-3 is between 2018-1-2 and 2020-12-1
-- If dates are like above, following if block does not provide correct result.

ans = false

if (cy >= sy and cy <= ed) then
	if (cm >= sm and cm <= em) then
		if (cd >= sd and cd <= ed) then
			ans=true
		end
	end
end 

print('Ans: ', ans)

-- This is the proper way ...

sD = os.time({ year = sy, month = sm, day = sd })
eD = os.time({ year = ey, month = em, day = ed })
cD = os.time({ year = cy, month = cm, day = cd })

print('Checking if '..cD..' is between '..sD..' and '..eD)

ans=false
if(cD >= sD and cD <= eD) then
	ans=true
end

print('Ans: ', ans)

-- Similarly, compare time as well ...

startTimeH=09
startTimeM=00
endTimeH=09
endTimeM=17

sT = os.time({ day = 1, month = 1, year = 1970, hour = tonumber(startTimeH), min = tonumber(startTimeM) })
eT = os.time({ day = 1, month = 1, year = 1970, hour = tonumber(endTimeH), min = tonumber(endTimeM) })
cT= os.time({ day = 1, month = 1, year = 1970, hour=ch, min=cmi})

print('Checking if '..cT..' is between '..sT..' and '..eT)
ans=false
if(cT >= sT and cT <= eT) then
	ans=true
end

print('Ans: ', ans)

