-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("doors",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
GlobalState["Doors"] = {
	-- Policia Civil
	["1"] = { Coords = vec3(841.9,166.55,83.24), Hash = -1871471999, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj", Other = "2" },
	["2"] = { Coords = vec3(844.09,166.37,83.24), Hash = 24505041, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj", Other = "1" },
	["3"] = { Coords = vec3(845.93,165.04,83.24), Hash = 24505041, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj" },
	["4"] = { Coords = vec3(847.93,163.9,83.24), Hash = 24505041, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj" },
	["5"] = { Coords = vec3(838.53,166.03,87.23), Hash = -1871471999, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj" },
	["6"] = { Coords = vec3(832.46,173.7,83.24), Hash = 1534879837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj" },
	["7"] = { Coords = vec3(832.86,174.6,83.24), Hash = 1534879837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pcerj" },
	-- Policia Militar
	["15"] = { Coords = vec3(565.56,13.18,69.35), Hash = 1070054098, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "16" },
	["16"] = { Coords = vec3(566.91,12.72,69.35), Hash = -1103852343, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "15" },
	["17"] = { Coords = vec3(621.84,7.94,82.75), Hash = 1070054098, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "18" },
	["18"] = { Coords = vec3(620.8,8.5,82.75), Hash = -1103852343, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "17" },
	["19"] = { Coords = vec3(605.27,11.42,82.75), Hash = 1070054098, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "20" },
	["20"] = { Coords = vec3(604.26,11.7,82.75), Hash = -1103852343, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "19" },
	["21"] = { Coords = vec3(552.7,33.31,69.35), Hash = 1070054098, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "22" },
	["22"] = { Coords = vec3(554.02,32.83,69.35), Hash = -1103852343, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "21" },
	["23"] = { Coords = vec3(536.38,32.83,69.51), Hash = 243539984, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "24" },
	["24"] = { Coords = vec3(537.34,31.64,69.51), Hash = 243539984, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj", Other = "23" },
	["25"] = { Coords = vec3(567.29,22.71,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["26"] = { Coords = vec3(563.25,23.89,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["27"] = { Coords = vec3(559.39,25.43,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["28"] = { Coords = vec3(561.35,33.68,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["29"] = { Coords = vec3(565.31,32.27,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["30"] = { Coords = vec3(569.12,30.88,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["31"] = { Coords = vec3(573.08,32.15,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["32"] = { Coords = vec3(568.91,33.63,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["33"] = { Coords = vec3(565.07,35.32,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	["34"] = { Coords = vec3(561.26,36.44,69.35), Hash = -413682504, Disabled = false, Lock = true, Distance = 1.75, Perm = "Pmerj" },
	-- Batalhão bope 
	["35"] = { Coords = vec3(-952.87,-2053.59,9.4), Hash = 279032130, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["36"] = { Coords = vec3(-953.43,-2051.67,9.4), Hash = -697504885, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["37"] = { Coords = vec3(-955.84,-2049.17,9.4), Hash = -697504885, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["38"] = { Coords = vec3(-959.57,-2053.14,9.4), Hash = -697504885, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["39"] = { Coords = vec3(-943.84,-2054.1,6.1), Hash = 279032130, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["40"] = { Coords = vec3(-937.72,-2048.84,6.1), Hash = 279032130, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["41"] = { Coords = vec3(-932.2,-2044.56,9.4), Hash = 279032130, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["42"] = { Coords = vec3(-944.0,-2045.31,9.4), Hash = -855881614, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
	["43"] = { Coords = vec3(-938.82,-2038.33,9.4), Hash = 855881614, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bope" },
		-- Batalhão Choque
	["44"] = { Coords = vec3(-830.12,-2675.82,14.2), Hash = -2051651622, Disabled = false, Lock = true, Distance = 1.75, Perm = "Choque" },
	["45"] = { Coords = vec3(-830.88,-2677.1,14.2), Hash = -2051651622, Disabled = false, Lock = true, Distance = 1.75, Perm = "Choque" },
	["46"] = { Coords = vec3(-815.31,-2666.01,14.2), Hash = -2051651622, Disabled = false, Lock = true, Distance = 1.75, Perm = "Choque" },
	["47"] = { Coords = vec3(-818.86,-2672.88,14.2), Hash = -2051651622, Disabled = false, Lock = true, Distance = 1.75, Perm = "Choque" },
	-- Batalhão Recom
	["50"] = { Coords = vec3(-604.95,-2355.25,16.07), Hash = 1162041580, Disabled = false, Lock = true, Distance = 1.75, Perm = "Recom" },
	["51"] = { Coords = vec3(-609.53,-2351.45,16.07), Hash = 1162041580, Disabled = false, Lock = true, Distance = 1.75, Perm = "Recom" },
	["52"] = { Coords = vec3(-577.38,-2346.29,16.07), Hash = 1162041580, Disabled = false, Lock = true, Distance = 1.75, Perm = "Recom" },
	["53"] = { Coords = vec3(-583.52,-2327.78,16.07), Hash = 1162041580, Disabled = false, Lock = true, Distance = 1.75, Perm = "Recom" },
	["54"] = { Coords = vec3(-589.54,-2322.46,16.07), Hash = 1162041580, Disabled = false, Lock = true, Distance = 1.75, Perm = "Recom" },
	["55"] = { Coords = vec3(-595.5,-2317.10,16.07), Hash = 1162041580, Disabled = false, Lock = true, Distance = 1.75, Perm = "Recom" },
	["999"] = { Coords = vec3(251.85,221.06,101.83), Hash = -1508355822, Disabled = true, Lock = true, Distance = 1.75, Perm = "Admin" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Permission(Number)
	local source = source
	local Passport = vRP.Passport(source)
	local Doors = GlobalState["Doors"]
	if Passport and Doors[Number] and Doors[Number]["Perm"] then
		if (SplitTwo(Doors[Number]["Perm"]) and vRP.HasPermission(Passport,SplitOne(Doors[Number]["Perm"]),parseInt(SplitTwo(Doors[Number]["Perm"]))) and vRP.HasService(Passport,SplitOne(Doors[Number]["Perm"]))) or (vRP.HasPermission(Passport,Doors[Number]["Perm"]) or vRP.HasService(Passport,Doors[Number]["Perm"])) then
			Doors[Number]["Lock"] = not Doors[Number]["Lock"]
			if Doors[Number]["Other"] then
				local Second = Doors[Number]["Other"]
				Doors[Second]["Lock"] = not Doors[Second]["Lock"]
			end
			GlobalState:set("Doors",Doors,true)
			vRPC.playAnim(source,true,Doors[Number]["Other"] and {"veh@mower@base","start_engine"} or {"anim@heists@keycard@","exit"},false)
			if Doors[Number]["Lock"] then
				TriggerClientEvent("sounds:Private",source,"houses_door_lock",0.5)
			else
				TriggerClientEvent("sounds:Private",source,"houses_door_unlock",0.5)
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROXIMITY
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Proximity",function(Coords)
	for Index,Value in pairs(GlobalState["Doors"]) do
		if not Value["Disabled"] and Value["Lock"] then
			if #(Coords - Value["Coords"]) <= Value["Distance"] then
				return Index
			end
		end
	end
	return false
end)