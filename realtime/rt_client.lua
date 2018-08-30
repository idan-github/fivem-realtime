RegisterNetEvent("realtime:event")
local clientrender = false
local tickcount = 0
local servertime = {h = 0, m = 0, s = 0}
Citizen.CreateThread(function()
	Wait(250)
	while true do
		Wait(33)
		if clientrender == true then
			local tick = GetGameTimer()
			if tickcount <= tick then
				local y, m, d, h, M, s = GetLocalTime()
				servertime = {h = h, m = M, s = s}
				tickcount = tick+1500
			end
		end
		NetworkOverrideClockTime(servertime.h, servertime.m, servertime.s)
	end
end)

AddEventHandler("realtime:event", function(thefunction, ...)
	local args = {...}
	if thefunction == "ChangeTime" then
		if clientrender == false then
			servertime = {h = args[1], m = args[2], s = args[3]}
		end
	end
	if thefunction == "ClientServer" then
		clientrender = args[1]
	end
end)