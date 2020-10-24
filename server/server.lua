data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('redemrp_blueberry:addBlueBerry')
AddEventHandler('redemrp_blueberry:addBlueBerry', function() 
	local _source = source
	local ItemData = data.getItem(_source, 'blueberry')
	local ItemData2 = data.getItem(_source, 'stick')
	math.randomseed(GetGameTimer())
	local amount = math.random(1,2)
	ItemData.AddItem(amount)
	ItemData2.AddItem(1)
end)


RegisterServerEvent("RegisterUsableItem:blueberry")
AddEventHandler("RegisterUsableItem:blueberry", function(source)
    local _source = source
	local ItemData = data.getItem(_source, 'blueberry')
	ItemData.RemoveItem(1)
    TriggerClientEvent('redemrp_blueberry:EatBlueBerry', _source)
end)

