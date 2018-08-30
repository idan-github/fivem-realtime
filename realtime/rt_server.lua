local clientrender = false
AddEventHandler("onServerResourceStart", function(resName)
	if resName == "realtime" then
		Wait(500)
		while true do
			Wait(1800)
			if clientrender == true then Wait(5000) end
			if clientrender == false then
				local h, m, s = tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S"))
				TriggerClientEvent("realtime:event", -1, "ChangeTime", h, m, s)
			end
		end
	end
end)

function SetClientRender(render)
	if not render then render = false end
	if render then render = true end
	clientrender = render
	TriggerClientEvent("realtime:event", -1, "ClientServer", clientrender)
end

function IsClientRendering()
	return clientrender
end