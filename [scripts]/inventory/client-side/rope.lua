-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Carry")
AddEventHandler("inventory:Carry",function(OtherSource,Mode,Hancuff)
	local Ped = PlayerPedId()
	if Mode == "Attach" then
		local OtherServer = GetPlayerFromServerId(OtherSource)
		if Hancuff then
			AttachEntityToEntity(Ped,GetPlayerPed(OtherServer),11816,0.0,0.5,0.0,0.0,0.0,0.0,true,true,false,true,2,true)
		else
			AttachEntityToEntity(Ped,GetPlayerPed(OtherServer),11816,0.6,0.0,0.0,0.0,0.0,0.0,true,true,false,true,2,true)
		end
	elseif Mode == "Detach" then
		DetachEntity(Ped,false,false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARREGAR NO H
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local idle = 1000
        if not IsPedInAnyVehicle(PlayerPedId()) then
            idle = 5
            if IsControlJustPressed(0,74) then
                TriggerServerEvent("inventory:Carregar")
            end
        end
        Citizen.Wait(idle)
    end
end)