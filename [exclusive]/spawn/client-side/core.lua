-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("spawn")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Camera = nil
local Vehicle = nil
local VehicleBack = nil
local isTrainMoving = false
local Characters = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Locate = {
	{ ["Coords"] = vec3(272.16, 185.44, 104.67), ["name"] = "Vinewood Blvd Taxi Stand" },
	{ ["Coords"] = vec3(-1833.96, -1223.5, 13.02), ["name"] = "The Boardwalk" },
	{ ["Coords"] = vec3(145.62, 6563.19, 32.0), ["name"] = "Paleto Gas Station" },
	{ ["Coords"] = vec3(-214.24, 6178.87, 31.17), ["name"] = "Paleto Bus Stop" },
	{ ["Coords"] = vec3(1122.11, 2667.24, 38.04), ["name"] = "Harmony Motel" },
	{ ["Coords"] = vec3(453.29, -662.23, 28.01), ["name"] = "LS Bus Station" },
	{ ["Coords"] = vec3(-1266.53, 273.86, 64.66), ["name"] = "The Richman Hotel" },
	{ ["Coords"] = vec3(1642.29, 3581.19, 36.5), ["name"] = "Sandy Shores Motel" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANIMS
-----------------------------------------------------------------------------------------------------------------------------------------
local Anims = {
    { ["Dict"] = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", ["Name"] = "hi_dance_crowd_17_v2_male^2" },
    { ["Dict"] = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", ["Name"] = "high_center_down" },
    { ["Dict"] = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", ["Name"] = "med_center_up" }
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN:OPENED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("spawn:Opened",function()
	local Ped = PlayerPedId()
	SetEntityCoords(Ped,233.85,-1387.59,29.55,false,false,false,false)
	LocalPlayer["state"]:set("Invincible",true,true)
	LocalPlayer["state"]:set("Invisible",true,true)
	SetEntityVisible(Ped,false,false)
	FreezeEntityPosition(Ped,true)
	SetEntityInvincible(Ped,true)
	SetEntityHeading(Ped,136.07)
	SetEntityHealth(Ped,101)
	SetPedArmour(Ped,0)

	Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
	SetCamCoord(Camera,232.0,-1388.64,30.45)
	RenderScriptCams(true,true,0,true,true)
	SetCamRot(Camera,0.0,0.0,320.0,2)
	SetCamActive(Camera,true)

	Characters = vSERVER.Characters()
	if parseInt(#Characters) > 0 then
		Customization(Characters[1])
	end

	Wait(5000)

	SendNUIMessage({ Action = "Spawn", Table = Characters })
	SetNuiFocus(true,true)

	if IsScreenFadedOut() then
		DoScreenFadeIn(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERCHOSEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("CharacterChosen",function(Data,Callback)
	if vSERVER.CharacterChosen(Data["Passport"]) then
		SendNUIMessage({ Action = "Close" })
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEWCHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("NewCharacter",function(Data,Callback)
	vSERVER.NewCharacter(Data["name"],Data["lastname"],Data["sex"])
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SWITCHCHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("SwitchCharacter",function(Data,Callback)
    if Characters and parseInt(#Characters) > 0 then
		for _,v in pairs(Characters) do
			if v["Passport"] == Data["Passport"] then
				Customization(v,true)
				break
			end
		end
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN:FINISH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("spawn:Finish")
AddEventHandler("spawn:Finish",function(Open,Coords)
	if Open then
		Locate[1] = { ["Coords"] = Coords, ["name"] = "" }
		for Number,v in pairs(Locate) do
			local Road = GetStreetNameAtCoord(v["Coords"]["x"],v["Coords"]["y"],v["Coords"]["z"])
			Locate[Number]["name"] = GetStreetNameFromHashKey(Road)
		end
		SetEntityCoordsNoOffset(PlayerPedId(),Locate[1]["Coords"]["x"],Locate[1]["Coords"]["y"],Locate[1]["Coords"]["z"],true,true,true)
		SetCamCoord(Camera,Locate[1]["Coords"]["x"],Locate[1]["Coords"]["y"],Locate[1]["Coords"]["z"] + 1)
		SendNUIMessage({ Action = "Location", Table = Locate })
		LocalPlayer["state"]:set("Invisible",true,true)
		SetEntityVisible(PlayerPedId(),false,false)
		SetCamRot(Camera,0.0,0.0,0.0,2)
		TriggerEvent("hud:Active",true)
	else
	
		SendNUIMessage({ Action = "Close" })
		SetNuiFocus(false,false)

		if DoesCamExist(Camera) then
			RenderScriptCams(false,false,0,false,false)
			SetCamActive(Camera,false)
			DestroyCam(Camera,false)
			Camera = nil
		end		

		SetEntityVisible(PlayerPedId(),true,false)
		LocalPlayer["state"]:set("Invisible",false,true)
		if Coords then
			TriggerEvent("hud:Active",true)
			SetEntityCoordsNoOffset(PlayerPedId(),Coords["x"],Coords["y"],Coords["z"],true,true,true)
		else
			TriggerServerEvent("vRP:BucketClient","Enter")
			FreezeEntityPosition(PlayerPedId(),true)
			SetEntityCoordsNoOffset(PlayerPedId(),402.55,-996.37,-99.01,true,true,true)
			SetEntityHeading(PlayerPedId(),180.00)
			TriggerEvent("barbershop:Open","spawn")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Spawn",function(Data,Callback)
	if DoesCamExist(Camera) then
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(Camera,false)
		DestroyCam(Camera,false)
		Camera = nil
	end
	SetEntityVisible(PlayerPedId(),true,false)
	LocalPlayer["state"]:set("Invisible",false,true)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHOSEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Chosen",function(Data,Callback)
	local Ped = PlayerPedId()
	local Index = Data["index"]
	SetEntityCoords(Ped,Locate[Index]["Coords"]["x"],Locate[Index]["Coords"]["y"],Locate[Index]["Coords"]["z"] - 1)
	SetCamCoord(Camera,Locate[Index]["Coords"]["x"],Locate[Index]["Coords"]["y"],Locate[Index]["Coords"]["z"] + 1)
	SetCamRot(Camera,0.0,0.0,0.0,2)
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CUSTOMIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
function Customization(Table,Check)
	if LoadModel(Table["Skin"]) then
		if Check then
			if GetEntityModel(PlayerPedId()) ~= GetHashKey(Table["Skin"]) then
				SetPlayerModel(PlayerId(),Table["Skin"])
				SetPedComponentVariation(PlayerPedId(),5,0,0,1)
			end
		else
			SetPlayerModel(PlayerId(),Table["Skin"])
			SetPedComponentVariation(PlayerPedId(),5,0,0,1)
		end

		local Ped = PlayerPedId()
		local Random = math.random(#Anims)
		if LoadAnim(Anims[Random]["Dict"]) then
			TaskPlayAnim(Ped,Anims[Random]["Dict"],Anims[Random]["Name"],8.0,8.0,-1,1,0,0,0,0)
		end

		exports["skinshop"]:Apply(Table["Clothes"],Ped)
		exports["barbershop"]:Apply(Table["Barber"],Ped)
		exports["tattooshop"]:Apply(Table["Tattoos"],Ped)

		SetEntityVisible(Ped,true,false)
		LocalPlayer["state"]:set("Invisible",false,true)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN:INCREMENT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("spawn:Increment")
AddEventHandler("spawn:Increment",function(Tables)
	for _,v in pairs(Tables) do
		Locate[#Locate + 1] = { ["Coords"] = v["Coords"], ["name"] = "" }
	end
end)