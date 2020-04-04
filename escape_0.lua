function escape(s)
    return string.gsub(s, "[^%w %-%_%.%+]", function(c) 
	-- escape chars except alphanumeric word, hyphen, underscore, dot and plus
        return string.format("%%%02X", string.byte(c))
    end)
end

return escape
