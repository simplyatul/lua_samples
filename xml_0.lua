-- Demonstrate xml parsing

require("LuaXML")

local calledParty = xml.new("calledParty")
assert(calledParty, "calledParty is nil")

calledParty[1]="0001112223"
print("calledParty Tag: ", calledParty)
print("----------------------------------------")

-- wocp => w/o calledParty
mime_xml_part_wocp = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?> \
<subscriberData type=\"wireless\"> \
    <subscriber> \
        <name></name> \
    </subscriber> \
    <billingAddress> \
        <civicAddress> \
            <PC>02118</PC> \
        </civicAddress> \
    </billingAddress> \
    <callInfo> \
        <callingParty>    2812226307    </callingParty> \
    </callInfo> \
</subscriberData>"

-- w/ empty calledParty
mime_xml_part_wcp = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?> \
<subscriberData type=\"wireless\"> \
    <subscriber> \
        <name></name> \
    </subscriber> \
    <billingAddress> \
        <civicAddress> \
            <PC>02118</PC> \
        </civicAddress> \
    </billingAddress> \
    <callInfo> \
        <calledParty></calledParty> \
        <callingParty>         2812226307    </callingParty> \
    </callInfo> \
</subscriberData>"

mime_xml_part = mime_xml_part_wcp

print("mime_xml_part received: ", mime_xml_part)
print("----------------------------------------")
local parsedxml = xml.eval(mime_xml_part)
assert(parsedxml , "unable to parse mime xml string to lua table") 

local callInfoTag = xml.find(parsedxml, "callInfo")
print("callInfoTag: ", callInfoTag)
print("----------------------------------------")

local calledPartyTag = xml.find(callInfoTag, "calledParty")
print("calledPartyTag: ", calledPartyTag)
print("----------------------------------------")

if nil == calledPartyTag then
    xml.append(callInfoTag, calledParty)
else
  calledPartyTag[1] = "999999999"
end

print("New callInfoTag: ", callInfoTag)
print("----------------------------------------")

-- xml.append(parsedxml, calledParty)
parsedxml = xml.str(parsedxml)
print("mime_xml_part returned: ", parsedxml)
print("----------------------------------------")


