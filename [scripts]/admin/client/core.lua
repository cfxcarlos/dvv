-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Hensa = {}
Tunnel.bindInterface("admin", Hensa)
vSERVER = Tunnel.getInterface("admin")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Flash = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
LocalPlayer["state"]["Spectate"] = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------
function Hensa.TeleportWay()
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		Ped = GetVehiclePedIsUsing(Ped)
	end

	local Wayblip = GetFirstBlipInfoId(8)
	local Coordsblip = GetBlipCoords(Wayblip)
	if DoesBlipExist(Wayblip) then
		for Number = 1, 1000 do
			SetEntityCoordsNoOffset(Ped, Coordsblip["x"], Coordsblip["y"], Number + 0.0, 1, 0, 0)

			RequestCollisionAtCoord(Coordsblip["x"], Coordsblip["y"], Coordsblip["z"])
			while not HasCollisionLoadedAroundEntity(Ped) do
				Wait(1)
			end

			if GetGroundZFor_3dCoord(Coordsblip["x"], Coordsblip["y"], Number + 0.0) then
				break
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTLIMBO
-----------------------------------------------------------------------------------------------------------------------------------------
function Hensa.TeleportLimbo()
	local Ped = PlayerPedId()
	local Coords = GetEntityCoords(Ped)
	local _, Node = GetNthClosestVehicleNode(Coords["x"], Coords["y"], Coords["z"], 1, 0, 0, 0)

	SetEntityCoords(Ped, Node["x"], Node["y"], Node["z"] + 1)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- admin:TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:Tuning")
AddEventHandler("admin:Tuning", function()
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetVehiclePedIsUsing(Ped)

		SetVehicleModKit(Vehicle, 0)
		SetVehicleMod(Vehicle, 11, GetNumVehicleMods(Vehicle, 11) - 1, false)
		SetVehicleMod(Vehicle, 12, GetNumVehicleMods(Vehicle, 12) - 1, false)
		SetVehicleMod(Vehicle, 13, GetNumVehicleMods(Vehicle, 13) - 1, false)
		SetVehicleMod(Vehicle, 15, GetNumVehicleMods(Vehicle, 15) - 1, false)
		ToggleVehicleMod(Vehicle, 18, true)
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
-- BUTTONCOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- while true do
-- if IsControlJustPressed(1,38) then
-- vSERVER.buttonTxt()
-- end

-- Wait(1)
-- end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONMAKERACE
-----------------------------------------------------------------------------------------------------------------------------------------
-- local Markers = {}
-- local DefaultLeft = 2.0
-- local ConfigRace = false
-- local DefaultRight = -2.0
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGRACE
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand("configrace",function()
-- if LocalPlayer["state"]["admin"] then
-- for _,v in pairs(Markers) do
-- if DoesBlipExist(v["Blip"]) then
-- RemoveBlip(v["Blip"])
-- end
-- end

-- Markers = {}
-- DefaultLeft = 2.0
-- DefaultRight = -2.0
-- ConfigRace = not ConfigRace

-- while ConfigRace do
-- Wait(1)

-- local Ped = PlayerPedId()
-- local Vehicle = GetVehiclePedIsUsing(Ped)
-- local Left = GetOffsetFromEntityInWorldCoords(Vehicle,DefaultLeft,5.0,0.0)
-- local Right = GetOffsetFromEntityInWorldCoords(Vehicle,DefaultRight,5.0,0.0)
-- local Center = GetOffsetFromEntityInWorldCoords(Vehicle,0.0,5.0,0.0)

-- if IsDisabledControlPressed(1,10) then
-- DefaultLeft = DefaultLeft + 0.1
-- DefaultRight = DefaultRight - 0.1
-- end

-- if IsDisabledControlPressed(1,11) then
-- DefaultLeft = DefaultLeft - 0.1
-- DefaultRight = DefaultRight + 0.1
-- end

-- if DefaultLeft < 2.0 then
-- DefaultLeft = 2.0
-- end

-- if DefaultRight > -2.0 then
-- DefaultRight = -2.0
-- end

-- if IsControlJustPressed(1,38) then
-- local Number = #Markers + 1
-- vSERVER.RaceConfig(Left,Center,Right,DefaultLeft * 0.80)
-- Markers[Number] = { ["Left"] = Left, ["Right"] = Right, ["Blip"] = nil }

-- Markers[Number]["Blip"] = AddBlipForCoord(Center["x"],Center["y"],Center["z"])
-- SetBlipSprite(Markers[Number]["Blip"],1)
-- SetBlipColour(Markers[Number]["Blip"],2)
-- SetBlipScale(Markers[Number]["Blip"],0.85)
-- ShowNumberOnBlip(Markers[Number]["Blip"],Number)
-- SetBlipAsShortRange(Markers[Number]["Blip"],true)
-- end

-- DrawMarker(1,Left["x"],Left["y"],Left["z"],0.0,0.0,0.0,0.0,0.0,0.0,1.75,1.75,100.0,65,130,226,155,0,0,0,0)
-- DrawMarker(1,Right["x"],Right["y"],Right["z"],0.0,0.0,0.0,0.0,0.0,0.0,1.75,1.75,100.0,65,130,226,155,0,0,0,0)
-- DrawMarker(1,Center["x"],Center["y"],Center["z"],0.0,0.0,0.0,0.0,0.0,0.0,0.75,0.75,100.0,255,255,255,25,0,0,0,0)

-- for _,v in pairs(Markers) do
-- DrawMarker(1,v["Left"]["x"],v["Left"]["y"],v["Left"]["z"],0.0,0.0,0.0,0.0,0.0,0.0,1.75,1.75,100.0,0,255,0,100,0,0,0,0)
-- DrawMarker(1,v["Right"]["x"],v["Right"]["y"],v["Right"]["z"],0.0,0.0,0.0,0.0,0.0,0.0,1.75,1.75,100.0,0,255,0,100,0,0,0,0)
-- end
-- end
-- end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- admin:INITSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:initSpectate")
AddEventHandler("admin:initSpectate", function(source)
	if not NetworkIsInSpectatorMode() then
		local Pid = GetPlayerFromServerId(source)
		local Ped = GetPlayerPed(Pid)

		LocalPlayer["state"]:set("Spectate", true, false)
		NetworkSetInSpectatorMode(true, Ped)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- admin:RESETSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:resetSpectate")
AddEventHandler("admin:resetSpectate", function()
	if NetworkIsInSpectatorMode() then
		NetworkSetInSpectatorMode(false)
		LocalPlayer["state"]:set("Spectate", false, false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDSTATEBAGCHANGEHANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddStateBagChangeHandler("Quake",nil,function(Name,Key,Value)
	ShakeGameplayCam("SKY_DIVING_SHAKE",1.0)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPAREA
-----------------------------------------------------------------------------------------------------------------------------------------
function Hensa.Limparea(Coords)
	ClearAreaOfPeds(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfCops(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfObjects(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfProjectiles(Coords["x"], Coords["y"], Coords["z"], 100.0, 0)
	ClearAreaOfVehicles(Coords["x"], Coords["y"], Coords["z"], 100.0, false, false, false, false, false)
	ClearAreaLeaveVehicleHealth(Coords["x"], Coords["y"], Coords["z"], 100.0, false, false, false, false)
end
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
-----------------------------------------------------------------------------------------------------------------------------------------
-- admin:LIGHTNINGTHUNDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:LightningThunder")
AddEventHandler("admin:LightningThunder", function(Value)
	for i=1, tonumber(Value) do
		CreateLightningThunder()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- admin:TYREBURST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:TyreBurst")
AddEventHandler("admin:TyreBurst", function(Tyre)
	if IsPedInAnyVehicle(PlayerPedId(), false) and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() then
		SetVehicleTyreBurst(GetVehiclePedIsIn(PlayerPedId(), false), Tyre, true, 1000.0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- admin:CHANGEVEHICLESPEED
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