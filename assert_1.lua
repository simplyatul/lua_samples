-- usage of pcall and assert

function check_assert(Input)
	print('Input is: ' .. tostring(Input))
    assert(Input, "Input is not true") -- means either nil or false
    print "returning 1..."
    return 1
end

print('--------------------------')
local status, r = pcall(check_assert, 1)
print('status: ', status)
print('r', r)

print('--------------------------')
local status, r = pcall(check_assert, nil)
print('status: ', status)
print('r', r)

print('--------------------------')
local status, r = pcall(check_assert, false)
print('status: ', status)
print('r', r)


