local fs_escape = function (input_string)  
  return input_string:gsub("([\"])", 
    function(a)
      --print(a)
      if "'" == a then
        return "\\'"
      elseif "\"" == a then
        return "\\\\\""
      elseif "\\" == a then
        return "\\\\"
      end
    end)
end

local k = "A'" 
--print(str_replace(k))


local str_to_replace = {"Harry ' Potter", "Harry \" Potter", "Harry \\ Potter", "Z1 O O"}
print("Input Strings")
for n,v in pairs(str_to_replace) do
  print (n,v)
end

print("Output Strings")
for n,v in pairs(str_to_replace) do
  v = fs_escape(v)
  print (n, v)
end

