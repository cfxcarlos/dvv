-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("admin",Creative)
vSERVER = Tunnel.getInterface("admin")
tvRP = Tunnel.getInterface("vrp")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVISIBLABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Freeze = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------


RegisterCommand("fps",function()
	if not LocalPlayer["state"]["Fps"] then
		LocalPlayer["state"]:set("Fps",true,true)
		SetTimecycleModifier("cinema")
	else
		LocalPlayer["state"]:set("Fps",false,true)
		ClearTimecycleModifier()
	end
end)
function enableDrift()
	local ped = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(ped)
	local speed = GetEntitySpeed(vehicle)*3.605936
	--[[ if GetPedInVehicleSeat(vehicle,-1) == ped and (ped)  then
		SetVehicleReduceGrip(vehicle,true)
	end ]]
end

function disableDrift()
	local ped = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(ped)
	--[[ if GetPedInVehicleSeat(vehicle,-1) == ped and    IsPedInAnyVehicle(ped) then
		SetVehicleReduceGrip(vehicle,false)
	end ]]
end
RegisterCommand("setfuel", function(_,Message)
	SetVehicleFuelLevel(GetVehiclePedIsUsing(PlayerPedId()), Message[1])
end)

RegisterCommand("+drift",enableDrift)
RegisterCommand("-drift",disableDrift)
RegisterKeyMapping("+drift","[car] Drift","keyboard","LSHIFT")

function Creative.teleportWay()
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		Ped = GetVehiclePedIsUsing(Ped)
    end

	local waypointBlip = GetFirstBlipInfoId(8)

	if waypointBlip ~= 0 then
		local x,y,z = table.unpack(GetBlipInfoIdCoord(waypointBlip,Citizen.ResultAsVector()))

		local ground
		local groundFound = false
		local groundCheckHeights = { 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0,550.0,600.0,650.0,700.0,750.0,800.0,850.0,900.0,950.0,1000.0,1050.0,1100.0 }

		for i,height in ipairs(groundCheckHeights) do
			SetEntityCoordsNoOffset(Ped,x,y,height,false,false,false)

			RequestCollisionAtCoord(x,y,z)
			while not HasCollisionLoadedAroundEntity(Ped) do
				Wait(1)
			end

			Wait(20)

			ground,z = GetGroundZFor_3dCoord(x,y,height)
			if ground then
				z = z + 1.0
				groundFound = true
				break;
			end
		end

		if not groundFound then
			z = 1200
			GiveDelayedWeaponToPed(Ped,0xFBAB5776,1,0)
		end

		RequestCollisionAtCoord(x,y,z)
		while not HasCollisionLoadedAroundEntity(Ped) do
			Wait(1)
		end

		SetEntityCoordsNoOffset(Ped,x,y,z,false,false,false)
	else
		TriggerEvent("Notify","amarelo","marque no mapa.",5000)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.teleportLimbo()
	local Ped = PlayerPedId()
	local Coords = GetEntityCoords(Ped)
	local _,xCoords = GetNthClosestVehicleNode(Coords["x"],Coords["y"],Coords["z"],1,0,0,0)

	SetEntityCoordsNoOffset(Ped,xCoords["x"],xCoords["y"],xCoords["z"] + 1,false,false,false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLETUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:vehicleTuning")
AddEventHandler("admin:vehicleTuning",function(Index,Plate)
	if NetworkDoesNetworkIdExist(Index) then
		local Vehicle = NetToEnt(Index)
		if DoesEntityExist(Vehicle) then
			if GetVehicleNumberPlateText(Vehicle) == Plate then

				SetVehicleModKit(Vehicle,0)
				SetVehicleMod(Vehicle,0,GetNumVehicleMods(Vehicle,0) - 1,false)
				SetVehicleMod(Vehicle,1,GetNumVehicleMods(Vehicle,1) - 1,false)
				SetVehicleMod(Vehicle,2,GetNumVehicleMods(Vehicle,2) - 1,false)
				SetVehicleMod(Vehicle,3,GetNumVehicleMods(Vehicle,3) - 1,false)
				SetVehicleMod(Vehicle,4,GetNumVehicleMods(Vehicle,4) - 1,false)
				SetVehicleMod(Vehicle,5,GetNumVehicleMods(Vehicle,5) - 1,false)
				SetVehicleMod(Vehicle,6,GetNumVehicleMods(Vehicle,6) - 1,false)
				SetVehicleMod(Vehicle,7,GetNumVehicleMods(Vehicle,7) - 1,false)
				SetVehicleMod(Vehicle,8,GetNumVehicleMods(Vehicle,8) - 1,false)
				SetVehicleMod(Vehicle,9,GetNumVehicleMods(Vehicle,9) - 1,false)
				SetVehicleMod(Vehicle,10,GetNumVehicleMods(Vehicle,10) - 1,false)
				SetVehicleMod(Vehicle,11,GetNumVehicleMods(Vehicle,11) - 1,false)
				SetVehicleMod(Vehicle,12,GetNumVehicleMods(Vehicle,12) - 1,false)
				SetVehicleMod(Vehicle,13,GetNumVehicleMods(Vehicle,13) - 1,false)
				SetVehicleMod(Vehicle,15,GetNumVehicleMods(Vehicle,15) - 1,false)
				SetVehicleMod(Vehicle,16,GetNumVehicleMods(Vehicle,16) - 1,false)
				SetVehicleMod(Vehicle,17,GetNumVehicleMods(Vehicle,17) - 1,false)
				SetVehicleMod(Vehicle,18,GetNumVehicleMods(Vehicle,18) - 1,false)
				SetVehicleMod(Vehicle,19,GetNumVehicleMods(Vehicle,19) - 1,false)
				SetVehicleMod(Vehicle,20,GetNumVehicleMods(Vehicle,20) - 1,false)
				SetVehicleMod(Vehicle,21,GetNumVehicleMods(Vehicle,21) - 1,false)
				SetVehicleMod(Vehicle,22,GetNumVehicleMods(Vehicle,22) - 1,false)
				SetVehicleMod(Vehicle,23,GetNumVehicleMods(Vehicle,23) - 1,false)
				SetVehicleMod(Vehicle,24,GetNumVehicleMods(Vehicle,24) - 1,false)
				SetVehicleMod(Vehicle,25,GetNumVehicleMods(Vehicle,25) - 1,false)
				SetVehicleMod(Vehicle,26,GetNumVehicleMods(Vehicle,26) - 1,false)
				SetVehicleMod(Vehicle,27,GetNumVehicleMods(Vehicle,27) - 1,false)
				ToggleVehicleMod(Vehicle,18,true)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONCOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- 	while true do
-- 		if IsControlJustPressed(1,38) then
-- 			vSERVER.buttonTxt()
-- 		end
-- 		Wait(1)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONMAKERACE
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- 	while true do
-- 		if IsControlJustPressed(1,38) then
-- 			local Ped = PlayerPedId()
-- 			local vehicle = GetVehiclePedIsUsing(Ped)
-- 			local vehCoords = GetEntityCoords(vehicle)
-- 			local leftCoords = GetOffsetFromEntityInWorldCoords(vehicle,5.0,0.0,0.0)
-- 			local rightCoords = GetOffsetFromEntityInWorldCoords(vehicle,-5.0,0.0,0.0)

-- 			vSERVER.raceCoords(vehCoords,leftCoords,rightCoords)
-- 		end

-- 		Wait(1)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:INITSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:initSpectate")
AddEventHandler("admin:initSpectate",function(source)
	if not NetworkIsInSpectatorMode() then
		local Pid = GetPlayerFromServerId(source)
		local Ped = GetPlayerPed(Pid)

		LocalPlayer["state"]["Spectate"] = true
		NetworkSetInSpectatorMode(true,Ped)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:RESETSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:resetSpectate")
AddEventHandler("admin:resetSpectate",function()
	if NetworkIsInSpectatorMode() then
		NetworkSetInSpectatorMode(false)
		LocalPlayer["state"]["Spectate"] = false
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:KICKALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:KickAll")
AddEventHandler("admin:KickAll",function()
	ShakeGameplayCam("LARGE_EXPLOSION_SHAKE", 0.16)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:DEBUGTOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:DebugToggle")
AddEventHandler("admin:DebugToggle",function()
    if not LocalPlayer["state"]["Debug"] then
		LocalPlayer["state"]["Debug"] = true
        debugOn()
        TriggerEvent("Notify","amarelo","Debug ON.",5000)
    else
		LocalPlayer["state"]["Debug"] = false
        TriggerEvent("Notify","amarelo","Debug OFF.",5000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANPEDBEUSED
-----------------------------------------------------------------------------------------------------------------------------------------
function canPedBeUsed(Ped)
    if Ped == nil then
        return false
    end

    if Ped == PlayerPedId() then
        return false
    end

    if not DoesEntityExist(Ped) then
        return false
    end
    return true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function GetVehicle()
    local PlayerPed = PlayerPedId()
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local Handle,Veh = FindFirstVehicle()
    local Success
    local Rped = nil
    local DistanceFrom
    repeat
        local VehCoords = GetEntityCoords(Veh)
        local Distance = #(PlayerCoords - VehCoords)
        if canPedBeUsed(ped) and Distance < 30.0 and (DistanceFrom == nil or Distance < DistanceFrom) then
            DistanceFrom = Distance
            Rped = Veh

	    	if IsEntityTouchingEntity(PlayerPed,Veh) then
	    		DrawText3Ds(VehCoords["x"],VehCoords["y"],VehCoords["z"] + 1, "Veh: "..Veh.." Model: "..GetEntityModel(Veh).." IN CONTACT")
	    	else
	    		DrawText3Ds(VehCoords["x"],VehCoords["y"],VehCoords["z"] + 1, "Veh: "..Veh.." Model: "..GetEntityModel(Veh))
	    	end
        end
        Success,Veh = FindNextVehicle(Handle)
    until not Success
    EndFindVehicle(Handle)
    return Rped
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETOBJECT
-----------------------------------------------------------------------------------------------------------------------------------------
function GetObject()
    local PlayerPed = PlayerPedId()
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local Handle,Obj = FindFirstObject()
    local Success
    local Rped = nil
    local DistanceFrom
    repeat
        local ObjCoords = GetEntityCoords(Obj)
        local Distance = #(PlayerCoords - ObjCoords)
        if Distance < 10.0 then
            DistanceFrom = Distance
            Rped = Obj

	    	if IsEntityTouchingEntity(PlayerPed,Obj) then
	    		DrawText3Ds(ObjCoords["x"],ObjCoords["y"],ObjCoords["z"] + 1,"Obj: "..Obj.." Model: "..GetEntityModel(Obj).." IN CONTACT")
	    	else
	    		DrawText3Ds(ObjCoords["x"],ObjCoords["y"],ObjCoords["z"] + 1,"Obj: "..Obj.." Model: "..GetEntityModel(Obj))
	    	end

			-- FreezeEntityPosition(Obj,Freeze)
        end
        Success,Obj = FindNextObject(Handle)
    until not Success
    EndFindObject(Handle)
    return Rped
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPED
-----------------------------------------------------------------------------------------------------------------------------------------
function GetPed()
    local PlayerPed = PlayerPedId()
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local Handle,Ped = FindFirstPed()
    local Success
    local Rped = nil
    local DistanceFrom
    repeat
        local PedCoords = GetEntityCoords(Ped)
        local Distance = #(PlayerCoords - PedCoords)
        if canPedBeUsed(Ped) and Distance < 30.0 and (DistanceFrom == nil or Distance < DistanceFrom) then
            DistanceFrom = Distance
            Rped = Ped

	    	if IsEntityTouchingEntity(PlayerPed,Ped) then
	    		DrawText3Ds(PedCoords["x"],PedCoords["y"],PedCoords["z"],"Ped: "..Ped.." Model: "..GetEntityModel(Ped).." Relationship HASH: "..GetPedRelationshipGroupHash(Ped).." IN CONTACT")
	    	else
	    		DrawText3Ds(PedCoords["x"],PedCoords["y"],PedCoords["z"],"Ped: "..Ped.." Model: "..GetEntityModel(Ped).." Relationship HASH: "..GetPedRelationshipGroupHash(Ped))
	    	end

            FreezeEntityPosition(Ped,Freeze)
        end
        Success,Ped = FindNextPed(Handle)
    until not Success
    EndFindPed(Handle)
    return Rped
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADDEBUG
-----------------------------------------------------------------------------------------------------------------------------------------
function debugOn()
	CreateThread(function()
		while LocalPlayer["state"]["Debug"] do
			local Ped = PlayerPedId()
			local Coords = GetEntityCoords(Ped)

			local CoordsFor = GetOffsetFromEntityInWorldCoords(Ped,0,1.0,0.0)
			local CoordsBack = GetOffsetFromEntityInWorldCoords(Ped,0,-1.0,0.0)
			local CoordsLef = GetOffsetFromEntityInWorldCoords(Ped,1.0,0.0,0.0)
			local CoordsRig = GetOffsetFromEntityInWorldCoords(Ped,-1.0,0.0,0.0) 

			local CoordsFor2 = GetOffsetFromEntityInWorldCoords(Ped,0,2.0,0.0)
			local CoordsBack2 = GetOffsetFromEntityInWorldCoords(Ped,0,-2.0,0.0)
			local CoordsLef2 = GetOffsetFromEntityInWorldCoords(Ped,2.0,0.0,0.0)
			local CoordsRig2 = GetOffsetFromEntityInWorldCoords(Ped,-2.0,0.0,0.0)    

			local StreetHash,StreetCrossing = GetStreetNameAtCoord(Coords["x"],Coords["y"],Coords["z"])--
			StreetName = GetStreetNameFromHashKey(StreetHash)--

			drawTxtS(0.8,0.50,0.4,0.4,0.30,"Heading: "..GetEntityHeading(Ped),55,155,55,255)--
			drawTxtS(0.8,0.52,0.4,0.4,0.30,"Coords: "..Coords,55,155,55,255)--
			drawTxtS(0.8,0.54,0.4,0.4,0.30,"Attached Ent: "..GetEntityAttachedTo(Ped),55,155,55,255)--
			drawTxtS(0.8,0.56,0.4,0.4,0.30,"H a G: "..GetEntityHeightAboveGround(Ped),55,155,55,255)--
			drawTxtS(0.8,0.58,0.4,0.4,0.30,"Health: "..GetEntityHealth(Ped),55,155,55,255)--
			drawTxtS(0.8,0.60,0.4,0.4,0.30,"Model: "..GetEntityModel(Ped),55,155,55,255)--
			drawTxtS(0.8,0.62,0.4,0.4,0.30,"Speed: "..GetEntitySpeed(Ped),55,155,55,255)--
			drawTxtS(0.8,0.64,0.4,0.4,0.30,"Frame Time: "..GetFrameTime(),55,155,55,255)--
			drawTxtS(0.8,0.66,0.4,0.4,0.30,"Street: "..StreetName,55,155,55,255)--
			
			
			DrawLine(Coords,CoordsFor,255,0,0,115)
			DrawLine(Coords,CoordsBack,255,0,0,115)

			DrawLine(Coords,CoordsLef,255,255,0,115)
			DrawLine(Coords,CoordsRig,255,255,0,115)

			DrawLine(CoordsFor,CoordsFor2,255,0,255,115)
			DrawLine(CoordsBack,CoordsBack2,255,0,255,115)

			DrawLine(CoordsLef,CoordsLef2,255,255,255,115)
			DrawLine(CoordsRig,CoordsRig2,255,255,255,115)

			GetPed()
			GetVehicle()
			GetObject()

			if IsControlJustReleased(1,38) then
				Freeze = not Freeze

				if Freeze then
					TriggerEvent("Notify","amarelo","Freeze ON.",5000)
				else
					TriggerEvent("Notify","amarelo","Freeze OFF.",5000)
				end
			end

			Wait(1)
		end
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTXTS
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxtS(x,y,width,height,scale,text,r,g,b,a)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.25,0.25)
    SetTextColour(r,g,b,a)
    SetTextDropShadow(0,0,0,0,255)
    SetTextEdge(1,0,0,0,255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width / 2,y - height / 2 + 0.005)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAPUZ COPRRIGIDO
-----------------------------------------------------------------------------------------------------------------------------------------
local showHood = false  
RegisterNetEvent("hud:Hood")
AddEventHandler("hud:Hood",function()
    showHood = not showHood

    if showHood then
        DoScreenFadeIn(0)
        SetPedComponentVariation(PlayerPedId(),1,0,0,1)
    else
        SetPedComponentVariation(PlayerPedId(),1,69,0,1)
        DoScreenFadeOut(0)
    end

    SendNUIMessage({ hood = showHood })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3DS
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3Ds(x,y,z,text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)

	if onScreen then
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(204,204,204,175)
		BeginTextCommandDisplayText("STRING")
		SetTextCentre(1)
		AddTextComponentSubstringKeyboardDisplay(text)
		EndTextCommandDisplayText(_x,_y)
		DrawText(_x,_y)
		local width = string.len(text) / 300
		DrawRect(_x,_y + 0.0125,width,0.03,15,15,15,200)
	end
end

function Creative.GetPostions()
	local Ped = PlayerPedId()
	local coords = GetEntityCoords(Ped)
	return coords
end
-----------------------------------------------------------------------------------------------------------------------------------------
--HS 1 TIRO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Wait(4)

        SetPedSuffersCriticalHits(PlayerPedId(-1), true)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--ANT-VDM
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    N_0x4757f00bc6323cfe(-1553120962, 0.0) 
end)
Citizen.CreateThread(function()
    while true do
        Wait(4)

        SetPedSuffersCriticalHits(PlayerPedId(-1), true)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:DEBUGTOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:callPlayer")
AddEventHandler("admin:callPlayer",function(phone)
	exports.smartphone:callPlayer(phone)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Screenshot")
AddEventHandler("Screenshot",function(mensagem)
	exports["screenshot"]:requestScreenshotUpload("/webhooks/1262520700720386150/SjVAPkx4E324uZjI1uyIp-avIYTU2kWqAFY5nMup1tyT3kxi4_PNm7eTxIUUrLtFo1d5","files[]",function(Data) 
		local resp = json.decode(data)
		print( resp.files[1].url )
	end)
end)

local Flash = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- FLASH
-----------------------------------------------------------------------------------------------------------------------------------------
function Hensa.Flash()
	local Pid = PlayerId()
	if not Flash then
		TriggerEvent("Notify", "sucesso", "Super velocidade ativada.", "Sucesso", 5000)
		SetRunSprintMultiplierForPlayer(Pid, 1.49)
		SetPedMoveRateOverride(Pid, 10.0)
		Flash = true
	else
		Flash = false
		SetRunSprintMultiplierForPlayer(Pid, 1.0)
		TriggerEvent("Notify", "aviso", "Super velocidade desativada.", "Atenção", 5000)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:LIGHTNINGTHUNDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:LightningThunder")
AddEventHandler("admin:LightningThunder", function(Value)
	for i=1, tonumber(Value) do
		CreateLightningThunder()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:TYREBURST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:TyreBurst")
AddEventHandler("admin:TyreBurst", function(Tyre)
	if IsPedInAnyVehicle(PlayerPedId(), false) and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() then
		SetVehicleTyreBurst(GetVehiclePedIsIn(PlayerPedId(), false), Tyre, true, 1000.0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:CHANGEVEHICLESPEED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:ChangeVehicleSpeed")
AddEventHandler("admin:ChangeVehicleSpeed", function(Speed)
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetVehiclePedIsUsing(Ped)
		if GetPedInVehicleSeat(Vehicle, -1) == Ped then
			SetVehicleEnginePowerMultiplier(Vehicle, GetVehicleCheatPowerIncrease(Vehicle) * Speed)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONGELAR
-----------------------------------------------------------------------------------------------------------------------------------------
local Explodir = false
local explosaoCount = 0

RegisterNetEvent('Hensa:Explodir')
AddEventHandler('Hensa:Explodir', function(source)
    local Ped = PlayerPedId()
    local Pos = GetEntityCoords(Ped)

    if not Explodir then
        Explodir = true
        explosaoCount = 0

        Citizen.CreateThread(function()
            while explosaoCount < 5 do  -- Define quantas explosões você quer
                Citizen.Wait(100)  -- Intervalo entre explosões (ajuste conforme necessário)
                
                AddExplosion(Pos.x, Pos.y, Pos.z, 4, 1000.0, true, false, 1.0)  -- Explosão sem dano
                explosaoCount = explosaoCount + 1
            end

            Explodir = false
        end)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TROLLS
-----------------------------------------------------------------------------------------------------------------------------------------
function Hensa.parachuteColors()
	local Ped = PlayerPedId()
	GiveWeaponToPed(Ped,"GADGET_PARACHUTE",1,false,true)
	SetPedParachuteTintIndex(Ped,math.random(7))
end

function Hensa.makeFly()
    local ped = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(ped))

    -- Elevar o jogador no ar (aumentar 'z' para voar para cima).
    SetEntityCoordsNoOffset(ped, x, y, z + 1000, true, true, true)

    -- Dar ao jogador um pára-quedas.
    GiveWeaponToPed(ped, GetHashKey("GADGET_PARACHUTE"), 1, false, true)
end

function Hensa.neyMar(ForwardVectorX,ForwardVectorY,ForwardVectorZ,Tackler)
	SetPedToRagdollWithFall(PlayerPedId(),1500,2000,0,ForwardVector,1.0,0.0,0.0,0.0,0.0,0.0,0.0)
end

function Hensa.ExplodirPessoa(x,y,z)
	AddExplosion(x,y,z, 6, 1.0, true, false, 0.0)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FIRE
-----------------------------------------------------------------------------------------------------------------------------------------
local PegandoFogo = false

RegisterNetEvent('Hensa:Fogo')
AddEventHandler('Hensa:Fogo', function(source)
    local Ped = PlayerPedId()

    if not PegandoFogo then
        PegandoFogo = true
        Citizen.Wait(100)
        StartEntityFire(Ped)
        SetEntityInvincible(Ped, true)  -- Torna o jogador invencível
        Citizen.Wait(10000)  -- Aguarda 10 segundos para Apagar o Fogo Automaticamente.
        PegandoFogo = false
        StopEntityFire(Ped)
        SetEntityInvincible(Ped, false)  -- Torna o jogador vulnerável novamente
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONGELAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('Hensa:Congelar')
AddEventHandler('Hensa:Congelar',function(source)
    local Ped = PlayerPedId(-1)
    if not Congelar then
        Congelar = true
        Citizen.Wait(100)
        FreezeEntityPosition(Ped, true);
    else
        Congelar = false
        FreezeEntityPosition(Ped, false);
    end
end)
