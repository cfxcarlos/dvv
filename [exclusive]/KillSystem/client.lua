local alreadyDead = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(20)
		for k,v in pairs(GetActivePlayers()) do
			N_0x31698aa80e0223f8(v)
		end
		local playerPed = PlayerPedId()
		local Coords = GetEntityCoords(playerPed)
		if IsEntityDead(playerPed) and alreadyDead == false then
			local killer = GetPedKiller(playerPed)
			local Coords2 = GetEntityCoords(killer)
			local killerId = 0
			local _, weaponhash = GetCurrentPedWeapon(killer, true)
			for k,v in pairs(GetActivePlayers()) do
				if killer == GetPlayerPed(v) then
					killerId = GetPlayerServerId(v)
					break
				end
			end
			if killer == playerPed then
				TriggerServerEvent('logplayerDied',nil,nil,nil,Coords,Coords2)
				alreadyDead = true
			elseif killerId and killerId ~= 0 then
				TriggerServerEvent('logplayerDied',tostring(killerId),1,weaponhash,Coords,Coords2)
				alreadyDead = true
			else
				TriggerServerEvent('logplayerDied',nil,nil,nil,Coords,Coords2)
				alreadyDead = true
			end
			alreadyDead = true
		end
		if not IsEntityDead(playerPed) and alreadyDead == true then
			alreadyDead = false
		end
	end
end)

RegisterNetEvent("ScreenshotKillLog")
AddEventHandler("ScreenshotKillLog",function(mensagem)
	print(mensagem)
	exports["screenshot"]:requestScreenshotUpload("/webhooks/1262520700720386150/SjVAPkx4E324uZjI1uyIp-avIYTU2kWqAFY5nMup1tyT3kxi4_PNm7eTxIUUrLtFo1d5","files[]",function(data) 
		TriggerServerEvent('ScreenshotKillLog',mensagem,json.decode(data).attachments[1].url)
	end)
end)