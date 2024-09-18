-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("pdm")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Mount = nil
local Camera = nil
local LastModel = ""
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAMERAACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
function CameraActive()
	if DoesCamExist(Camera) then
		ClearFocus()
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(Camera,false)
		DestroyCam(Camera,false)
		Camera = nil
	end
	Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
	PointCamAtCoord(Camera, -964.48,-3026.79,13.93)
    SetCamCoord(Camera, -964.48,-3026.79,13.93)
    SetCamRot(Camera, -15.0, 0.0, 237.44)
    SetFocusPosAndVel(-964.48,-3026.79,13.93, 0.0, 0.0, 0.0)
    RenderScriptCams(true, false, 0, 1, 0)
	SetCamActive(Camera,true)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PDM:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("pdm:Open")
AddEventHandler("pdm:Open",function()
	--TriggerServerEvent("vRP:BucketClient","Enter")
	if DoesEntityExist(Mount) then
		DeleteEntity(Mount)
	end
	local Ped = PlayerPedId()
	if not LocalPlayer["state"]["Buttons"] and not LocalPlayer["state"]["Commands"] and GetEntityHealth(Ped) > 100 then
		CameraActive()
		SetNuiFocus(true,true)
		SetCursorLocation(0.5,0.5)
		TriggerEvent("dynamic:closeSystem")
		SendNUIMessage({ name = "Open", payload = VehicleGlobal() })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	local Ped = PlayerPedId()
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	--TriggerServerEvent("vRP:BucketClient","Exit")
	
	if DoesEntityExist(Mount) then
		DeleteEntity(Mount)
	end

	if DoesCamExist(Camera) then
		ClearFocus()
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(Camera,false)
		DestroyCam(Camera,false)
		Camera = nil
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MOUNT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Mount",function(Data,Callback)
	if LoadModel(Data) and LastModel ~= Data then
		if DoesEntityExist(Mount) then
			DeleteEntity(Mount)
		end
		Mount = CreateVehicle(Data,-961.81,-3028.5,13.93,144.57,false,false)
		SetVehicleModKit(Mount,0)
		ToggleVehicleMod(Mount,18,true)
		SetVehicleExtraColours(Mount,147,147)
		SetVehicleMod(Mount,11,GetNumVehicleMods(Mount,11) - 1,false)
		SetVehicleMod(Mount,12,GetNumVehicleMods(Mount,12) - 1,false)
		SetVehicleMod(Mount,13,GetNumVehicleMods(Mount,13) - 1,false)
		SetVehicleMod(Mount,15,GetNumVehicleMods(Mount,15) - 1,false)
		SetVehicleNumberPlateText(Mount,"PDMSPORT")
		SetEntityInvincible(Mount,true)
		SetModelAsNoLongerNeeded(Data)
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Buy",function(Data,Callback)
	vSERVER.Buy(Data)
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Rotate",function(Data,Callback)
	if DoesEntityExist(Mount) then
		if Data == "Left" then
			SetEntityHeading(Mount,GetEntityHeading(Mount) - 5)
		else
			SetEntityHeading(Mount,GetEntityHeading(Mount) + 5)
		end
	end
	
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRIVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Drive",function(Data,Callback)
	if vSERVER.CheckDrive(Data) == true then

		SetNuiFocus(false,false)
		SetCursorLocation(0.5,0.5)
		
		if LoadModel(Data) then
			if DoesEntityExist(Mount) then
				DeleteEntity(Mount)
			end
			Mount = CreateVehicle(Data,-49.83,-1079.38,26.81,false,false)
			
			SetVehicleModKit(Mount,0)
			ToggleVehicleMod(Mount,18,true)
			SetVehicleExtraColours(Mount,147,147)
			SetVehicleMod(Mount,11,GetNumVehicleMods(Mount,11) - 1,false)
			SetVehicleMod(Mount,12,GetNumVehicleMods(Mount,12) - 1,false)
			SetVehicleMod(Mount,13,GetNumVehicleMods(Mount,13) - 1,false)
			SetVehicleMod(Mount,15,GetNumVehicleMods(Mount,15) - 1,false)
			
			SetVehicleNumberPlateText(Mount,"PDMSPORT")
			SetPedIntoVehicle(PlayerPedId(),Mount,-1)
			SetEntityInvincible(Mount,true)
			SetModelAsNoLongerNeeded(Data)
			
			LocalPlayer["state"]:set("Commands",true,true)
			LocalPlayer["state"]:set("TestDrive",true,false)
			
			while true do
				local Ped = PlayerPedId()
				if not IsPedInAnyVehicle(Ped) then
					SetEntityCoords(Ped,-63.49,-1092.39,26.56)
					LocalPlayer["state"]:set("Commands",false,true)
					LocalPlayer["state"]:set("TestDrive",false,false)
					if DoesEntityExist(Mount) then
						DeleteEntity(Mount)
					end
					vSERVER.RemoveDrive()
					break
				end
				Wait(1)
			end
			
		end
	end
	
	Callback("Ok")
end)