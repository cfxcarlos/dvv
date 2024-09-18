RegisterNetEvent("Progress")
AddEventHandler("Progress",function(time)
	SendNUIMessage({ title = "Carregando...", time = time })
end)