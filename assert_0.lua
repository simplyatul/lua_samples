
assert(true and (true and true), "assert triggered") -- not asserting here

assert(false and (true and true), "assert triggered") -- prog will stop here
print('This will not print')
