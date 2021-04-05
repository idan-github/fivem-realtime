SetMillisecondsPerGameMinute(1000)
AddEventHandler("realtime:event", function(h, m, s)
	NetworkOverrideClockTime(h, m, s)
end)
