-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("washing",Creative)
vSERVER = Tunnel.getInterface("washing")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Button = GetGameTimer()
local List = {
    vec3(2327.90,2569.79,46.67),
    vec3(1275.72,-1710.51,54.76),
}

local Time = nil
local Lavagem = nil
AddEventHandler("washing:Location",function()
	if not Time or GetGameTimer() >= Time then
		Time = GetGameTimer() + (20 * 60 * 1000)
		Lavagem = math.random(#List)
		SetNewWaypoint(List[Lavagem]["x"], List[Lavagem]["y"])
        TriggerEvent("Notify","amarelo","Local de lavagem esta marcado no seu mapa.",5000)
        TriggerEvent("Notify","azul","Você tem 20min para chegar no local.",5000)
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local timeDistance = 999
		local Ped = PlayerPedId()
		if not IsPedInAnyVehicle(Ped) then
			local playerCoords = GetEntityCoords(Ped)
			for Permission,Coords in pairs(List) do
                if List[Lavagem] then
                    local Distance = #(playerCoords - Coords)
                    if Distance <= 5 then
                        timeDistance = 1
                        DrawText3D(Coords["x"], Coords["y"], Coords["z"], "PRESSIONE [~g~E~w~] PARA LAVAR DINHEIRO")
                        if Distance <= 1.5 then
                            if IsControlJustPressed(1,38) and GetGameTimer() >= Button then
                                Button = GetGameTimer() + 500
                                RequestAnimDict("anim@amb@business@coc@coc_unpack_cut@")
                                while not HasAnimDictLoaded("anim@amb@business@coc@coc_unpack_cut@") do
                                    Wait(500)
                                end
                                TaskPlayAnim(Ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v6_cokecutter", 8.0, -8.0, -1, 0, 0, false, false, false)
                                SetTimeout(10000, function()
                                    StopAnimTask(Ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v6_cokecutter", 1.0)
                                end)
                                vSERVER.Washing()
                            end
                        end
                    end
                end
            end
        end
        Wait(timeDistance)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)
	if onScreen then
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringKeyboardDisplay(text)
		SetTextColour(255,255,255,150)
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextCentre(1)
		EndTextCommandDisplayText(_x,_y)

		local width = string.len(text) / 160 * 0.45
		DrawRect(_x,_y + 0.0125,width,0.03,15,15,15,175)
	end
end