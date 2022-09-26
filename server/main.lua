

RDX = nil
TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

RDX.RegisterUsableItem('item_cleanshort', function(source)		
   local xPlayer = RDX.GetPlayerFromId(source)
   xPlayer.removeInventoryItem('item_cleanshort',1)   
   TriggerClientEvent('cleaning:startcleaningshort', source, cleaning)
   Citizen.Wait(500)
   --TriggerClientEvent('rdx:alert',source,''..Config.MsgSet[item]..'', 0)	
end)


