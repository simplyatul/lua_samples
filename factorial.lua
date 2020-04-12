function fact (n)
	if n <= 0 then -- if you use == operator and provide -ve number, then recursion will never stop
		return 1
	else
		return n * fact(n - 1)
	end
end

print("enter a number:")
a = io.read("*n") -- reads a number
print(fact(a))

