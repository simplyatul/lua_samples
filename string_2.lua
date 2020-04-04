local escape = require './escape_0' 

local unescaped_str = '\\ a b c ~ +1234567890 你好先生'
-- escaped_str:   %5C a b c %7E +1234567890 %E4%BD%A0%E5%A5%BD
local escaped_str = escape(unescaped_str)

print('unescaped_str: ', unescaped_str)
print('escaped_str: ', escaped_str)


