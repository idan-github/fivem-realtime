RegisterServerEvent("realtime:event")
AddEventHandler("realtime:event", function()
	TriggerClientEvent("realtime:event", source, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
end)
