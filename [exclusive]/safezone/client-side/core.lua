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
Tunnel.bindInterface("safezone",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Active = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAFEZONES
-----------------------------------------------------------------------------------------------------------------------------------------
local Safezones = {
	PolyZone:Create({
		vector2(205.79, -1024.9),
		vector2(208.78, -1025.24),
		vector2(211.59, -1023.95),
		vector2(213.45, -1021.75),
		vector2(265.77, -877.37),
		vector2(265.96, -872.18),
		vector2(263.66, -867.45),
		vector2(260.59, -865.25),
		vector2(253.69, -862.65),
		vector2(250.3, -863.26),
		vector2(246.89, -864.0),
		vector2(196.15, -845.44),
		vector2(194.17, -843.28),
		vector2(191.79, -840.11),
		vector2(186.61, -840.59),
		vector2(183.84, -843.67),
		vector2(174.82, -866.8),
		vector2(169.77, -877.06),
		vector2(162.94, -886.97),
		vector2(159.76, -893.61),
		vector2(126.22, -985.71),
		vector2(126.45, -990.34),
		vector2(129.62, -993.36),
		vector2(152.5, -1001.3),
		vector2(155.39, -1006.91),
		vector2(157.51, -1008.65),
		vector2(162.7, -1010.22),
		vector2(169.57, -1007.15),
		vector2(192.45, -1014.76),
		vector2(195.25, -1020.51),
		vector2(198.78, -1022.51)
	}, {
		["name"] = "Square",
		["minZ"] = 28.00,
		["maxZ"] = 35.00,
		debugPoly = false,
	}),
	PolyZone:Create({
		vector2(-695.27, -29.9),
		vector2(-714.93, -5.12),
		vector2(-737.02, 50.83),
		vector2(-740.29, 94.77),
		vector2(-768.22, 93.80),
		vector2(-868.81, 70.01),
		vector2(-846.81, 16.83),
		vector2(-815.45, -37.66),
		vector2(-798.79, -87.36),
	}, {
		["name"] = "Igreja",
		["minZ"] = 35.88,
		["maxZ"] = 75.88,
		debugPoly = false,
	}),
	PolyZone:Create({
		vector2(-1284.14,-261.41),
		vector2(-1251.34,-321.45),
		vector2(-1301.9,-347.76),
		vector2(-1334.69,-294.01),
	}, {
		["name"] = "AutoSport",
		["minZ"] = 35.88,
		["maxZ"] = 75.88,
		debugPoly = false,
	}),
	PolyZone:Create({
		vector2(510.81,-1122.27),
		vector2(418.07,-1122.42),
		vector2(421.43,-1170.65),
		vector2(512.31,-1169.47),
	}, {
		["name"] = "Hospital",
		["minZ"] = 28.32,
		["maxZ"] = 65.88,
		debugPoly = false,
	}),
	PolyZone:Create({
		vector2(-970.89,-2795.11),
		vector2(-938.2,-2738.59),
		vector2(-1096.66,-2656.31),
		vector2(-1125.23,-2711.74),
	}, {
		["name"] = "Aeroport",
		["minZ"] = 13.95,
		["maxZ"] = 65.88,
		debugPoly = false,
	}),
	PolyZone:Create({
		vector2(-44.41,-1733.68),
		vector2(43.76,-1696.89),
		vector2(152.89,-1780.41),
		vector2(93.12,-1850.61),
	}, {
		["name"] = "Megamall",
		["minZ"] = 13.95,
		["maxZ"] = 65.88,
		debugPoly = false,
	}),
	PolyZone:Create({
		vector2(2732.52,3431.08),
		vector2(2770.77,3525.08),
		vector2(2809.65,3510.16),
		vector2(2771.66,3417.78),
	}, {
		["name"] = "Megamall2",
		["minZ"] = 13.95,
		["maxZ"] = 65.88,
		debugPoly = false,
	}),

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSAFEZONE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)
		local insideSafezone = false
		for Index, Safezone in ipairs(Safezones) do
			if Safezone:isPointInside(Coords) then
				insideSafezone = true
				if not Active then
					Active = Index
					NetworkSetFriendlyFireOption(false)
					LocalPlayer["state"]:set("Safezone", Active, true)
					LocalPlayer["state"]:set("Invincible", true, false)
					SetEntityInvincible(Ped, true)
					if IsPedArmed(Ped, 7) then
						TriggerEvent("inventory:CleanWeapons", true)
					end
					TriggerEvent("Notify", "verde", "Entrou na SafeZone.", 2000)
				end
				break
			end
		end
		if not insideSafezone and Active then
			Active = false
			SetEntityInvincible(Ped, false)
			NetworkSetFriendlyFireOption(true)
			LocalPlayer["state"]:set("Safezone", Active, true)
			LocalPlayer["state"]:set("Invincible", false, false)
			TriggerEvent("Notify", "vermelho", "Saiu da SafeZone.", 2000)
		end
		Wait(1000)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		if Active then
			TimeDistance = 1

			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,68,true)
			DisableControlAction(0,69,true)
			DisableControlAction(0,70,true)
			--[[ DisableControlAction(0,75,true) ]]
			DisableControlAction(0,91,true)
			DisableControlAction(0,92,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,257,true)

			local Ped = PlayerPedId()
			DisablePlayerFiring(Ped,true)
		end

		Wait(TimeDistance)
	end
end)