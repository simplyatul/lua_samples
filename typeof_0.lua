
--[[
-- Total 8 basic types in Lua
-- nil, boolean, number, string, userdata, function, thread, and table
--]]

print(type(nil))				-- nil
print(type("Namaste"))   		-- string
print(type(10.4*3))         	-- number
print(type("33"))         		-- string
print(type(33))         		-- number
print(type(print))          	-- function
print(type(type))           	-- function
print(type(true))           	-- boolean
print(type(nil))            	-- nil
print(type({}))            		-- table
print(type(io.stdin)) 			-- userdata
print(type(X)) 					-- nil as X is not initialized 
print(type(type(X))) 			-- string
-- The last line will result in "string" no matter the value of X, because the result of type is always a string.
print(type(type(nil)))			-- string ==> to support above statement

