local eventTable = {}

function printT(tab) 
	for n,v in pairs(tab) do
	  print (n,v)
	end
	
	print('largest numeric index: ', table.maxn (tab)) -- printing 0 every time
end

function addInEventTable(var_name, var_value)
  print('var_name: ', var_name)
  print('var_value: ', var_value)
  if nil ~= var_name then 
	eventTable[var_name] = var_value
  end
end

addInEventTable(callStartTime, "1000")
addInEventTable(callEndTime, "1005")

print (eventTable)
printT(eventTable)

print('-----------------------')
eventTable.callStartTime=310
eventTable.callEndTime=311
print (eventTable)
printT(eventTable)

print('-----------------------')
var='callTransferTime'
addInEventTable(var, 315)
print (eventTable)
printT(eventTable)


