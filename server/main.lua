RDX = nil
TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

RDX.RegisterUsableItem('kit_weapon_cloth', function(source)		
   local xPlayer = RDX.GetPlayerFromId(source)
   xPlayer.removeInventoryItem('kit_weapon_cloth',1)   
   TriggerClientEvent('cleaning:startcleaningshort', source, cleaning) 
   --TriggerClientEvent('rdx:alert',source,''..Config.MsgSet[item]..'', 0)	
end)


