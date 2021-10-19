SetMillisecondsPerGameMinute(60000)
RegisterNetEvent("realtime:event")
AddEventHandler("realtime:event", function(h, m, s)
	Citizen.CreateThread(function()
		while true do
	NetworkOverrideClockTime(h, m, s)
	Citizen.Wait(0)
	end
	end)
end)
TriggerServerEvent("realtime:event")
