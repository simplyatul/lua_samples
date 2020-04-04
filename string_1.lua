local escape = require 'escape_0' 

for j=0, 255 do
  print(j, string.char(j), escape(string.char(j)))
end

