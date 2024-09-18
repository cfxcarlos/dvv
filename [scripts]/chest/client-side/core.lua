-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("chest")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTS
-----------------------------------------------------------------------------------------------------------------------------------------
local Chests = {
	-- Policia Civil
	{ ["Name"] = "Pcerj", ["Coords"] = vec3(-2107.33,-535.26,12.97), ["Weight"] = 10000, ["Slots"] = 2000, ["Permission"] = "Pcerj", ["Logs"] = true, ["Mode"] = "2" },
	-- Policia Militar
	{ ["Name"] = "Pmerj", ["Coords"] = vec3(922.62,-3187.64,6.72), ["Weight"] = 10000000, ["Slots"] = 2000, ["Permission"] = "Pmerj", ["Logs"] = true, ["Mode"] = "2" },
	-- Batalhão Bope
	{ ["Name"] = "Bope", ["Coords"] = vec3(-254.42,1551.93,346.38), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Bope", ["Logs"] = true, ["Mode"] = "2" },
	-- Delegacia PF
	{ ["Name"] = "PoliciaFederal", ["Coords"] = vec3(381.22,-742.74,29.96), ["Weight"] = 200000000, ["Slots"] = 2000, ["Permission"] = "PoliciaFederal", ["Logs"] = true, ["Mode"] = "2" },
	-- Batalhao Choque
	{ ["Name"] = "Choque", ["Coords"] = vec3(-581.64,-2390.94,19.12), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Choque", ["Logs"] = true, ["Mode"] = "2" },
	-- Batalhão Recom
	{ ["Name"] = "Recom", ["Coords"] = vec3(-571.64,-2351.41,16.07), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Recom", ["Logs"] = true, ["Mode"] = "2" },
	-- Batalhão Prf
	{ ["Name"] = "Prf", ["Coords"] = vec3(-306.52,6111.46,33.62), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Prf", ["Logs"] = true, ["Mode"] = "2" },
	-- Hospital
	{ ["Name"] = "Hospital", ["Coords"] = vec3(460.88,-1145.8,30.75), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Paramedic", ["Logs"] = true, ["Mode"] = "2" },
	-- Mecanica
	{ ["Name"] = "AutoSport-2", ["Coords"] = vec3(-1306.77,-291.08,40.73), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "AutoSport", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "AutoSport", ["Coords"] = vec3(-1310.16,-292.74,40.73), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "AutoSport", ["Logs"] = true, ["Mode"] = "4" },
--	{ ["Name"] = "EastCustoms-2", ["Coords"] = vec3(886.16,-2097.45,34.88), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "EastCustoms", ["Logs"] = true, ["Mode"] = "2" },
--	{ ["Name"] = "EastCustoms", ["Coords"] = vec3(898.42,-2099.94,34.88), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "EastCustoms", ["Logs"] = true, ["Mode"] = "2" },
	-- Matutos
	{ ["Name"] = "Matuto", ["Coords"] = vec3(898.42,-2099.94,34.88), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Matuto", ["Logs"] = true, ["Mode"] = "2" },
	-- Favelas 1
	{ ["Name"] = "ComplexoDaPenha-3", ["Coords"] = vec3(-1819.89,-47.72,95.89), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "ComplexoDaPenha", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "ComplexoDaPenha", ["Coords"] = vec3(-1818.18,-48.07,95.89), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "ComplexoDaPenha", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Castelar-3", ["Coords"] = vec3(1436.44,-160.97,190.12), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Castelar", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Castelar", ["Coords"] = vec3(1435.72,-155.65,190.12), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Castelar", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Egito-3", ["Coords"] = vec3(1592.15,-654.21,153.65), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Castelar", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Egito", ["Coords"] = vec3(1590.03,-654.09,153.65), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Castelar", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Chapadao-3", ["Coords"] = vec3(1567.76,3234.97,54.54), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Chapadao", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Chapadao", ["Coords"] = vec3(1567.4,3236.68,54.54), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Chapadao", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "CidadeDeDeus-3", ["Coords"] = vec3(710.72,3830.0,46.71), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "CidadeDeDeus", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "CidadeDeDeus", ["Coords"] = vec3(710.85,3829.05,46.71), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "CidadeDeDeus", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "PU-3", ["Coords"] = vec3(-2004.47,2580.94,22.36), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "PU", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "PU", ["Coords"] = vec3(-2003.4,2581.05,22.36), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "PU", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Jacarezinho-3", ["Coords"] = vec3(2186.14,3614.06,56.38), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Jacarezinho", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Jacarezinho", ["Coords"] = vec3(2187.25,3615.14,56.38), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Jacarezinho", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Fazendinha-3", ["Coords"] = vec3(-2231.68,-168.02,91.44), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Fazendinha", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Fazendinha", ["Coords"] = vec3(-2230.31,-168.9,91.44), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Fazendinha", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "CaixaDagua-3", ["Coords"] = vec3(1868.51,-2211.75,169.76), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "CaixaDagua", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "CaixaDagua", ["Coords"] = vec3(1868.75,-2215.58,169.83), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "CaixaDagua", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "VilaKennedy-3", ["Coords"] = vec3(2056.96,6485.39,114.02), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "VilaKennedy", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "VilaKennedy", ["Coords"] = vec3(2055.26,6484.38,113.79), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "VilaKennedy", ["Logs"] = true, ["Mode"] = "4" },
	-- Favelas 2
	{ ["Name"] = "CidadeAlta-3", ["Coords"] = vec3(2609.0,3477.37,62.53), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "CidadeAlta", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "CidadeAlta", ["Coords"] = vec3(2607.35,3477.3,62.53), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "CidadeAlta", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Vidigal-3", ["Coords"] = vec3(2354.73,484.94,202.01), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Vidigal", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Vidigal", ["Coords"] = vec3(2354.71,481.94,202.01), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Vidigal", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "VJ-3", ["Coords"] = vec3(-2526.71,2663.07,28.73), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "VJ", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "VJ", ["Coords"] = vec3(-2533.22,2664.85,28.73), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "VJ", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "BaixaDoSapateiro-3", ["Coords"] = vec3( -2403.0,2620.98,27.57), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "BaixaDoSapateiro", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "BaixaDoSapateiro", ["Coords"] = vec3(-2401.09,2627.58,27.57), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "BaixaDoSapateiro", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Acari-3", ["Coords"] = vec3(1967.65,423.49,178.78), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Acari", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Acari", ["Coords"] = vec3(1969.84,424.59,178.78), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Acari", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Serrinha-3", ["Coords"] = vec3(2372.93,2672.73,54.42), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Serrinha", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Serrinha", ["Coords"] = vec3(2374.19,2670.04,54.42), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Serrinha", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "NovaHolanda-3", ["Coords"] = vec3(-2101.14,2587.35,25.9), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "NovaHolanda", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "NovaHolanda", ["Coords"] = vec3(-2102.46,2584.82,25.9), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "NovaHolanda", ["Logs"] = true, ["Mode"] = "4" },
	-- Favelas 3
--	{ ["Name"] = "Antares-3", ["Coords"] = vec3(-464.36,1514.63,391.93), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Antares", ["Logs"] = true, ["Mode"] = "2" },
--	{ ["Name"] = "Antares", ["Coords"] = vec3(-464.36,1514.63,391.93), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Antares", ["Logs"] = true, ["Mode"] = "2" },
	{ ["Name"] = "Dende-3", ["Coords"] = vec3(2221.09,3956.17,40.37), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Dende", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Dende", ["Coords"] = vec3(2219.82,3957.54,40.37), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Dende", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Rodo-3", ["Coords"] = vec3(619.96,2565.82,73.36), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Rodo", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Rodo", ["Coords"] = vec3(620.05,2562.48,73.36), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Rodo", ["Logs"] = true, ["Mode"] = "4" },
	-- Favelas ADA
	{ ["Name"] = "Turano-3", ["Coords"] = vec3(1554.98,1464.98,114.49), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Turano", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Turano", ["Coords"] = vec3(1555.8,1466.5,114.49), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Turano", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Pedreira-3", ["Coords"] = vec3(1668.65,3023.12,68.14), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Pedreira", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Pedreira", ["Coords"] = vec3(1665.96,3024.45,68.14), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Pedreira", ["Logs"] = true, ["Mode"] = "4" },
	{ ["Name"] = "Manguinhos-3", ["Coords"] = vec3(1902.77,2.59,188.89), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Manguinhos", ["Logs"] = true, ["Mode"] = "3" },
	{ ["Name"] = "Manguinhos", ["Coords"] = vec3( 1901.41,0.81,188.89), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Manguinhos", ["Logs"] = true, ["Mode"] = "4" },
	-- EB
	{ ["Name"] = "Exercito", ["Coords"] = vec3(-1757.24,3178.74,32.82), ["Weight"] = 10000, ["Slots"] = 2000, ["Permission"] = "Exercito", ["Logs"] = true, ["Mode"] = "2" },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LABELS
-----------------------------------------------------------------------------------------------------------------------------------------
local Labels = {
	["1"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		}
	},
	["2"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		}
	},
	["3"] = {
		{
			event = "chest:Open",
			label = "Bau Lider",
			tunnel = "shop",
			service = "Normal"
		}
	},
	["4"] = {
		{
			event = "chest:Open",
			label = "Bau Membro",
			tunnel = "shop",
			service = "Normal"
		}
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADINIT
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Name,v in pairs(Chests) do
		exports["target"]:AddCircleZone("Chest:"..Name,v["Coords"],1.0,{
			name = "Chest:"..Name,
			useZ = true
		},{
			Distance = 0.75,
			shop = v["Name"],
			options = Labels[v["Mode"]]
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Open")
AddEventHandler("chest:Open",function(Name,Mode)
	if GetEntityHealth(PlayerPedId()) > 100 then
		if vSERVER.Permissions(Name,Mode) then
			if Mode == "Tray" then
				vRP.playAnim(true,{ "pickup_object", "putdown_low" }, false)
			else
				if Mode ~= "Tray" and Mode ~= "Item" and Mode ~= "Glove" and Mode ~= "Fridge" and Mode ~= "Warehouse" then
					vRP.playAnim(false,{"amb@prop_human_bum_bin@base","base"},true)
					TriggerEvent("sounds:Private","chest",0.35)
				end
			end
			SetNuiFocus(true,true)
			SendNUIMessage({ Action = "Open", Mode = Mode })
		else
			vRP.playAnim(true,{ "pickup_object", "putdown_low" }, false)
			TriggerEvent("Notify","amarelo","Trancado.",3000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:OPENTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("chest:openTrunk",function(Selected,te)
	if vSERVER.Permissions(Selected[1]..":"..Selected[2],"Trunk") and GetEntityHealth(PlayerPedId()) > 100 then

		Vehicle = Selected[3]

		TaskTurnPedToFaceEntity(PlayerPedId(), Selected[3], 1.0);
        --[[ while 20 < math.abs(math.floor(GetEntityHeading(PlayerPedId())) - math.floor(GetEntityHeading(Selected[3]))) do
            Citizen.Wait(0)
        end ]]

		FreezeEntityPosition(PlayerPedId(),true)
		SetEntityCollision(PlayerPedId(),false)
		

		vRP.playAnim(true,{ "pickup_object", "putdown_low" }, false)
		Wait(1000)
		TriggerServerEvent("player:TrunkDoor",VehToNet(Selected[3]),"open")
		Wait(1000)
		vRP.playAnim(false,{"amb@prop_human_bum_bin@base","base"},true)
		
		SetNuiFocus(true,true)
		SendNUIMessage({ Action = "Open" })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
	if Vehicle then
		--[[ if GetVehicleClass(Vehicle) == 0 and GetVehicleClass(Vehicle) == 1 and GetVehicleClass(Vehicle) == 3 then
			vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, true)
			Wait(1000)
		end ]]
		vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, false)
		TriggerServerEvent("player:TrunkDoor",VehToNet(Vehicle),"close")
		Wait(1000)
		SetEntityCollision(PlayerPedId(),true)
		FreezeEntityPosition(PlayerPedId(),false)
		Vehicle = nil
	end
	vRP.removeObjects()
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Take",function(Data,Callback)
	if MumbleIsConnected() then
		PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
		vSERVER.Take(Data["item"],Data["slot"],Data["amount"],Data["target"])
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STORE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Store",function(Data,Callback)
	if MumbleIsConnected() and not exports["hud"]:Wanted() then
		PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
		vSERVER.Store(Data["item"],Data["slot"],Data["amount"],Data["target"])
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Update",function(Data,Callback)
	if MumbleIsConnected() then
		PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
		vSERVER.Update(Data["slot"],Data["target"],Data["amount"])
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Chest",function(Data,Callback)
	local Inventory,Chest,InvPeso,InvMaxPeso,ChestPeso,ChestMaxPeso,Slots = vSERVER.Chest()
	if Inventory then
		Callback({ Inventory = Inventory, Chest = Chest, invPeso = InvPeso, invMaxpeso = InvMaxPeso, chestPeso = ChestPeso, chestMaxpeso = ChestMaxPeso, Slots = Slots })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Update")
AddEventHandler("chest:Update",function(Action,invPeso,invMaxpeso,chestPeso,chestMaxpeso)
	SendNUIMessage({ Action = Action, invPeso = invPeso, invMaxpeso = invMaxpeso, chestPeso = chestPeso, chestMaxpeso = chestMaxpeso })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Close")
AddEventHandler("inventory:Close",function()
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ Action = "Close" })
	if Vehicle then
		--[[ if GetVehicleClass(Vehicle) == 0 and GetVehicleClass(Vehicle) == 1 and GetVehicleClass(Vehicle) == 3 then
			vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, true)
			Wait(1000)
		end ]]
		vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, true)
		TriggerServerEvent("player:TrunkDoor",VehToNet(Vehicle),"close")
		Wait(1000)
		SetEntityCollision(PlayerPedId(),true)
		FreezeEntityPosition(PlayerPedId(),false)
		Vehicle = nil
		vRP.removeObjects()
	end
end)