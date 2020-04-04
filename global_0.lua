-- Ref: http://www.wellho.net/resources/ex.php4?item=u112/globals

function tellme(Input)
	print('Printing Table: ', Input)
	for n,v in pairs(Input) do
		print (n,v)
		if ('table' == type(v) and '_G' ~= n) then
			-- tellme(v) -- WIP
		end
	end
end

starter = "Prawn Cocktail"
main = "Jellied Eel"
desert = "Pineapple"

tellme(_G)

