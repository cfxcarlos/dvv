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
Tunnel.bindInterface("paramedic",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Damaged = {}
local Bleeding = 0
local BloodTick = 0
local Injuried = GetGameTimer()
local BloodTimers = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- GAMEEVENTTRIGGERED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("gameEventTriggered",function(name,Message)
	if LocalPlayer["state"]["Active"] and name == "CEventNetworkEntityDamage" and PlayerPedId() == Message[1] then
		if (Message[7] == 126349499 or Message[7] == 1064738331 or Message[7] == 85055149) and GetEntityHealth(Message[1]) > 100 then
			SetPedToRagdoll(Message[1],2500,2500,0,0,0,0)
		elseif (Message[7] == 911657153) and GetEntityHealth(Message[1]) > 100 then
			vRP.playAnim(false,{ "stungun@standing","damage" },true)
			Wait(1000)
			vRP.stopAnim()
			SetPedToRagdoll(Message[1],10000,10000,0,0,0,0)
			SetTimecycleModifier("REDMIST_blend")
            ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE",1.0)
			SetTimeout(5000,function()
                SetTimecycleModifier("hud_def_desat_Trevor")
                SetTimeout(10000,function()
                    SetTimecycleModifier("")
                    SetTransitionTimecycleModifier("")
                    StopGameplayCamShaking()
                end)
            end)
		else
			--[[ if GetGameTimer() >= Injuried then
				if not IsPedInAnyVehicle(Message[1]) and GetEntityHealth(Message[1]) > 100 then
					Injuried = GetGameTimer() + 1000

					local Hit,Mark = GetPedLastDamageBone(Message[1])
					if Hit and not Damaged[Mark] and Mark ~= 0 then
						Bleeding = Bleeding + 1
						Damaged[Mark] = true
					end
				end
			end ]]
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADBLOODTICK
-----------------------------------------------------------------------------------------------------------------------------------------
--[[ CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		if GetGameTimer() >= BloodTimers and GetEntityHealth(Ped) > 100 then
			BloodTimers = GetGameTimer() + 10000
			BloodTick = BloodTick + 1
			if BloodTick >= 3 and Bleeding >= 3 then
				BloodTick = 0
				AnimpostfxPlay("MenuMGIn")
				SetTimeout(Bleeding * 750,function()
					AnimpostfxStop("MenuMGIn")
				end)
			end
		end
		Wait(1000)
	end
end) ]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- PARAMEDIC:RESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("paramedic:Reset")
AddEventHandler("paramedic:Reset",function()
	Damaged = {}
	Bleeding = 0
	BloodTick = 0
	Injuried = GetGameTimer()
	BloodTimers = GetGameTimer()
	ClearPedBloodDamage(PlayerPedId())
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLEEDING
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Bleeding()
	return Bleeding
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANDAGE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Bandage()
	local Humanes = ""
	for Number,_ in pairs(Damaged) do
		TriggerEvent("Notify","amarelo","Passou ataduras no(a) <b>"..Bone(Number).."</b>.",5000,"Atenção")
		TriggerEvent("sounds:Private","bandage",0.5)
		Bleeding = Bleeding - 1
		Humanes = Bone(Number)
		Damaged[Number] = nil
		BloodTick = 0
		break
	end
	if Bleeding <= 0 then
		ClearPedBloodDamage(PlayerPedId())
	end
	return Humanes
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- OXYCONTIN
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Oxycontin()
	Damaged = {}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PARAMEDIC:INJURIES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("paramedic:Injuries")
AddEventHandler("paramedic:Injuries",function()
	local Wounds = 0
	local Injuries = ""
	local Damages = false

	for Number,_ in pairs(Damaged) do
		if not Damages then
			Injuries = Injuries.."<b>Danos Superficiais:</b><br>"
			Damages = true
		end

		Wounds = Wounds + 1
		Injuries = Injuries.."<b>"..Wounds.."</b>: "..Bone(Number).."<br>"
	end

	if Injuries == "" then
		TriggerEvent("Notify","amarelo","Nenhum ferimento encontrado.",5000,"Aviso")
	else
		TriggerEvent("Notify","azul",Injuries,10000,"Ferimentos")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DIAGNOSTIC
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Diagnostic()
	return Damaged,Bleeding
end