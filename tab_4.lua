days = {"Sunday", "Monday", "Tuesday", "Wednesday",
			"Thursday", "Friday", "Saturday"}

print(days[1]) -- Sunday
print('------------------------------')

-- Following both are same

a = {x = 10, y = 20}		-- However, this is faster as Lua creates the table with the right size
a = {}; a.x = 10; a.y = 20

-- We can mix record-style and list-style initializations in the same constructor:

polyline = {color="blue",
			thickness=2,
			npoints=4,
			{x=0, y=0}, -- polyline[1]
			{x=-10, y=0}, -- polyline[2]
			{x=-10, y=1}, -- polyline[3]
			{x=0, y=1} -- polyline[4]
}

print(polyline[2].x) --> -10
print(polyline[4].y) --> 1

print('------------------------------')
opnames = {
			["+"] = "add", ["-"] = "sub",
			["*"] = "mul", ["/"] = "div"
		}
i = 20; s = "-"
a = {[i+0] = s, [i+1] = s..s, [i+2] = s..s..s}

print(opnames[s]) --> sub
print(a[22]) --> ---

print('------------------------------')
b = {x = 0, y = 0} -->> {["x"] = 0, ["y"] = 0}
c = {"r", "g", "b"} -->> {[1] = "r", [2] = "g", [3] = "b"}
print(b.x)
-- print(c.1) -- This gives syntax error
print(c[1])

