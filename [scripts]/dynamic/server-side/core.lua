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
Tunnel.bindInterface("dynamic",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
vKEYBOARD = Tunnel.getInterface("keyboard")
vSKINSHOP = Tunnel.getInterface("skinshop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('vroupas2', function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if Passport then
		local custom = vSKINSHOP.Customization(source)
		if custom then
        	local content = ""
			if custom['hat']['item'] then
				content = content .. '["hat"] = { item = '..custom['hat']['item']..', texture = '..custom['hat']['texture']..' },\n'    
			end
			if custom['pants']['item'] then
				content = content .. '["pants"] = { item = '..custom['pants']['item']..', texture = '..custom['pants']['texture']..' },\n'  
			end
			if custom['vest']['item'] then
				content = content .. '["vest"] = { item = '..custom['vest']['item']..', texture = '..custom['vest']['texture']..' },\n'  
			end
			if custom['bracelet']['item'] then
				content = content .. '["bracelet"] = { item = '..custom['bracelet']['item']..', texture = '..custom['bracelet']['texture']..' },\n'  
			end
			if custom['backpack']['item'] then
				content = content .. '["backpack"] = { item = '..custom['backpack']['item']..', texture = '..custom['backpack']['texture']..' },\n'  
			end
			if custom['decals']['item'] then
				content = content .. '["decals"] = { item = '..custom['decals']['item']..', texture = '..custom['decals']['texture']..' },\n'  
			end
			if custom['mask']['item'] then
				content = content .. '["mask"] = { item = '..custom['mask']['item']..', texture = '..custom['mask']['texture']..' },\n'  
			end
			if custom['shoes']['item'] then
				content = content .. '["shoes"] = { item = '..custom['shoes']['item']..', texture = '..custom['shoes']['texture']..' },\n'  
			end
			if custom['tshirt']['item'] then
				content = content .. '["tshirt"] = { item = '..custom['tshirt']['item']..', texture = '..custom['tshirt']['texture']..' },\n'  
			end
			if custom['torso']['item'] then
				content = content .. '["torso"] = { item = '..custom['torso']['item']..', texture = '..custom['torso']['texture']..' },\n'  
			end
			if custom['accessory']['item'] then
				content = content .. '["accessory"] = { item = '..custom['accessory']['item']..', texture = '..custom['accessory']['texture']..' },\n'  
			end
			if custom['watch']['item'] then
				content = content .. '["watch"] = { item = '..custom['watch']['item']..', texture = '..custom['watch']['texture']..' },\n'  
			end
			if custom['arms']['item'] then
				content = content .. '["arms"] = { item = '..custom['arms']['item']..', texture = '..custom['arms']['texture']..' },\n'  
			end
			if custom['glass']['item'] then
				content = content .. '["glass"] = { item = '..custom['glass']['item']..', texture = '..custom['glass']['texture']..' },\n'  
			end
			if custom['ear']['item'] then
				content = content .. '["ear"] = { item = '..custom['ear']['item']..', texture = '..custom['ear']['texture']..' }'  
			end
        	vKEYBOARD.Copy(source,"vRoupas:",content)
		end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXCLUSIVAS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Exclusivas()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Clothes = {}
		local Consult = vRP.GetSrvData("Exclusivas:"..Passport)
		for Index,v in pairs(Consult) do
			Clothes[#Clothes + 1] = { ["name"] = Index, ["id"] = v["id"], ["texture"] = v["texture"] or 0, ["type"] = v["type"] }
		end
		return Clothes
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CheckOneOrg()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Permission = vRP.GetUserType(Passport, "Favela")
		if Permission then
			return vRP.HasPermission(Passport, Permission, 1)
		end
		return 
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXCLUSIVAS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CheckVip()
	local source = source
	local Passport = vRP.Passport(source)
	if vRP.HasGroup(Passport,"Premium") then
		return true
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CODES
-----------------------------------------------------------------------------------------------------------------------------------------
local Codes = {
	["13"] = {
		["Message"] = "Oficial desmaiado/ferido",
		["Blip"] = 6
	},
	["20"] = {
		["Message"] = "Localização",
		["Blip"] = 6
	},
	["38"] = {
		["Message"] = "Abordagem de trânsito",
		["Blip"] = 6
	},
	["78"] = {
		["Message"] = "Apoio com prioridade",
		["Blip"] = 6
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:TENCODE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("dynamic:Tencode")
AddEventHandler("dynamic:Tencode",function(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetUserType(Passport,"Policia") and Codes[Number] then
		local FullName = vRP.FullName(Passport)
		local Coords = vRP.GetEntityCoords(source)
		local Service = vRP.NumPermission("Policia")
		for Passports,Sources in pairs(Service) do
			async(function()
				vRPC.PlaySound(Sources,"ATM_WINDOW","HUD_FRONTEND_DEFAULT_SOUNDSET")
				TriggerClientEvent("NotifyPush",Sources,{ code = Number, title = Codes[Number]["Message"], x = Coords["x"], y = Coords["y"], z = Coords["z"], name = FullName, color = Codes[Number]["Blip"] })
			end)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Animal = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CREATEANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CreateAnimal(Model,x,y,z,h)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if Animal[Passport] then
			DeleteEntity(Animal[Passport])
		end
		Animal[Passport] = CreatePed(28,GetHashKey(Model),x,y,z,h)
		return Animal[Passport],NetworkGetNetworkIdFromEntity(Animal[Passport])
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETEANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.deleteAnimal()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		DeleteEntity(Animal[Passport])
		Animal[Passport] = nil
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport)
	if Animal[Passport] then
		DeleteEntity(Animal[Passport])
		Animal[Passport] = nil
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:TOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Toggle")
AddEventHandler("service:Toggle",function(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.ServiceToggle(source,Passport,Service,false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	["RádioPatrulha"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 33, texture = 0 },
				["vest"] = { item = 8, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 200, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 137, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 27, texture = 0 },
				["tshirt"] = { item = 152, texture = 0 },
				["torso"] = { item = 88, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 49, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 13, texture = 2 },
				["pants"] = { item = 33, texture = 0 },
				["vest"] = { item = 8, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 200, texture = 0 },
				["accessory"] = { item = 1, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = 10, texture = 1 },
				["pants"] = { item = 100, texture = 1 },
				["vest"] = { item = 3, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 25, texture = 0 },
				["tshirt"] = { item = 3, texture = 0 },
				["torso"] = { item = 88, texture = 0 },
				["accessory"] = { item = 145, texture = 0 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 5, texture = 0 },
				["ear"] = { item = -1, texture = 0 } 
			},
		},
		[3] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 13, texture = 2 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 111, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 149, texture = 4 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 1, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = 6, texture = 0 },
				["pants"] = { item = 100, texture = 1 },
				["vest"] = { item = 3, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 25, texture = 0 },
				["tshirt"] = { item = 3, texture = 0 },
				["torso"] = { item = 88, texture = 0 },
				["accessory"] = { item = 145, texture = 0 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 5, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[4] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 3, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 111, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 149, texture = 3 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 1, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = 6, texture = 0 },
				["pants"] = { item = 100, texture = 1 },
				["vest"] = { item = 3, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 25, texture = 0 },
				["tshirt"] = { item = 152, texture = 0 },
				["torso"] = { item = 88, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 5, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[5] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 0 },
				["shoes"] = { item = 111, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 149, texture = 2 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 1, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = 28, texture = 2 },
				["pants"] = { item = 100, texture = 1 },
				["vest"] = { item = 3, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 25, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 88, texture = 0 },
				["accessory"] = { item = 1, texture = 1 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 5, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[6] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 33, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 74, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 2 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 200, texture = 7 },
				["accessory"] = { item = 200, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = 28, texture = 2 },
				["pants"] = { item = 100, texture = 1 },
				["vest"] = { item = 3, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 25, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 192, texture = 0 },
				["accessory"] = { item = 151, texture = 0 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 5, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[7] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 15, texture = 14 },
				["vest"] = { item = -1, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = -1, texture = 0 },
				["decals"] = { item = -1, texture = 0 },
				["mask"] = { item = -1, texture = 0 },
				["shoes"] = { item = 2, texture = 0 },
				["tshirt"] = { item = 15, texture = 0 },
				["torso"] = { item = 73, texture = 16 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 0, texture = 0 },
				["glass"] = { item = -1, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = 28, texture = 0 },
				["pants"] = { item = 100, texture = 1 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 25, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 192, texture = 3 },
				["accessory"] = { item = 147, texture = 0 },
				["watch"] = { item = 27, texture = 2 },
				["arms"] = { item = 14, texture = 0 },
				["glass"] = { item = 5, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
	},
	["Rocam"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 17, texture = 0 },
				["pants"] = { item = 33, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 149, texture = 4 },
				["accessory"] = { item = 1, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 209, texture = 0 },
				["glass"] = { item = 60, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 17, texture = 0 },
				["pants"] = { item = 33, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 65, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 149, texture = 4 },
				["accessory"] = { item = 1, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 209, texture = 0 },
				["glass"] = { item = 60, texture = 0 },
				["ear"] = { item = -1, texture = 0 } 
			},
		},
	},
	["ForçaTática"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 121, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 72, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 0 },
				["shoes"] = { item = 103, texture = 0 },
				["tshirt"] = { item = 44, texture = 1 },
				["torso"] = { item = 143, texture = 0 },
				["accessory"] = { item = 42, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 4, texture = 0 },
				["glass"] = { item = 60, texture = 0 },
				["ear"] = { item = -2, texture = 0 }
			}
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 121, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 72, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 52, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 2 },
				["shoes"] = { item = 103, texture = 0 },
				["tshirt"] = { item = 44, texture = 0 },
				["torso"] = { item = 143, texture = 4 },
				["accessory"] = { item = 42, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 4, texture = 0 },
				["glass"] = { item = 60, texture = 0 },
				["ear"] = { item = -2, texture = 0 }
			},
		},
		[3] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 31, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 0 },
				["shoes"] = { item = 103, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 200, texture = 0 },
				["accessory"] = { item = 42, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[4] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 31, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 52, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 0 },
				["shoes"] = { item = 103, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 200, texture = 0 },
				["accessory"] = { item = 42, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 } 
			},
		},
	},
	["Bike"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 12, texture = 2 },
				["vest"] = { item = 4, texture = 3 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = -1, texture = 0 },
				["decals"] = { item = 8, texture = 0 },
				["mask"] = { item = -1, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 190, texture = 10 },
				["accessory"] = { item = 8, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 0, texture = 0 },
				["glass"] = { item = -1, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			}
		}
	},
	["Trânsito"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 13, texture = 0 },
				["pants"] = { item = 32, texture = 0 },
				["vest"] = { item = 14, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 8, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 33, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 190, texture = 9 },
				["accessory"] = { item = 8, texture = 0 },
				["watch"] = { item = 1, texture = 0 },
				["arms"] = { item = 0, texture = 0 },
				["glass"] = { item = 4, texture = 9 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 13, texture = 0 },
				["pants"] = { item = 32, texture = 0 },
				["vest"] = { item = 14, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 54, texture = 0 },
				["decals"] = { item = 8, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 33, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 190, texture = 9 },
				["accessory"] = { item = 8, texture = 0 },
				["watch"] = { item = 1, texture = 0 },
				["arms"] = { item = 0, texture = 0 },
				["glass"] = { item = 4, texture = 9 },
				["ear"] = { item = -1, texture = 0 } 
			},
		},
	},
	["Rpm"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 18, texture = 0 },
				["pants"] = { item = 32, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = -1, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 52, texture = 0 },
				["shoes"] = { item = 37, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 156, texture = 4 },
				["accessory"] = { item = 8, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 20, texture = 0 },
				["glass"] = { item = -1, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 18, texture = 0 },
				["pants"] = { item = 32, texture = 0 },
				["vest"] = { item = 4, texture = 3 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = -1, texture = 0 },
				["decals"] = { item = 8, texture = 0 },
				["mask"] = { item = 52, texture = 0 },
				["shoes"] = { item = 37, texture = 0 },
				["tshirt"] = { item = 57, texture = 0 },
				["torso"] = { item = 193, texture = 11 },
				["accessory"] = { item = 8, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 20, texture = 0 },
				["glass"] = { item = -1, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
	},
	["Dpm"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 33, texture = 0 },
				["vest"] = { item = 8, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 31, texture = 0 },
				["decals"] = { item = 8, texture = 0 },
				["mask"] = { item = 58, texture = 3 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 55, texture = 0 },
				["torso"] = { item = 200, texture = 0 },
				["accessory"] = { item = 8, texture = 0 },
				["watch"] = { item = 1, texture = 0 },
				["arms"] = { item = 0, texture = 0 },
				["glass"] = { item = -1, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
	},
	["Bope"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 121, texture = 0 },
				["pants"] = { item = 48, texture = 0 },
				["vest"] = { item = 16, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 33, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 1 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 16, texture = 0 },
				["torso"] = { item = 220, texture = 13 },
				["accessory"] = { item = 200, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 208, texture = 0 },
				["glass"] = { item = 9, texture = 9 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 121, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 72, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 33, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 2 },
				["shoes"] = { item = 103, texture = 0 },
				["tshirt"] = { item = 243, texture = 0 },
				["torso"] = { item = 143, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 1, texture = 0 },
				["glass"] = { item = 9, texture = 9 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
		[3] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 121, texture = 0 },
				["pants"] = { item = 25, texture = 2 },
				["vest"] = { item = 72, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 33, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 58, texture = 2 },
				["shoes"] = { item = 103, texture = 0 },
				["tshirt"] = { item = 243, texture = 0 },
				["torso"] = { item = 143, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 1, texture = 0 },
				["glass"] = { item = 9, texture = 9 },
				["ear"] = { item = -1, texture = 0 }
			}
		},
	},

	["Pcerj"] = {
		[1] = { -- Acadepol
			["mp_m_freemode_01"] = {
        		["hat"] = { item = 121, texture = 0 },
        		["pants"] = { item = 87, texture = 0 },
        		["vest"] = { item = 69, texture = 0 },
        		["bracelet"] = { item = -1, texture = 0 },
        		["backpack"] = { item = 2, texture = 0 },
        		["decals"] = { item = 146, texture = 0 },
        		["mask"] = { item = 169, texture = 13 },
        		["shoes"] = { item = 110, texture = 0 },
        		["tshirt"] = { item = 131, texture = 0 },
        		["torso"] = { item = 73, texture = 9 },
        		["accessory"] = { item = 195, texture = 0 },
        		["watch"] = { item = -1, texture = 0 },
        		["arms"] = { item = 171, texture = 0 },
        		["glass"] = { item = 0, texture = 0 },
        		["ear"] = { item = -1, texture = 0 }
			}
    	},
    	[2] = { -- Agente Classe 3
			["mp_m_freemode_01"] = {
    		    ["hat"] = { item = 121, texture = 0 },
    		    ["pants"] = { item = 87, texture = 0 },
    		    ["vest"] = { item = 22, texture = 8 },
    		    ["bracelet"] = { item = -1, texture = 0 },
    		    ["backpack"] = { item = 2, texture = 0 },
    		    ["decals"] = { item = 146, texture = 0 },
    		    ["mask"] = { item = 169, texture = 13 },
    		    ["shoes"] = { item = 110, texture = 0 },
    		    ["tshirt"] = { item = 131, texture = 0 },
    		    ["torso"] = { item = 94, texture = 1 },
    		    ["accessory"] = { item = 193, texture = 0 },
    		    ["watch"] = { item = -1, texture = 0 },
    		    ["arms"] = { item = 171, texture = 0 },
    		    ["glass"] = { item = 0, texture = 0 },
    		    ["ear"] = { item = -1, texture = 0 }
			}
    	},
    	[3] = { -- Agente Classe 2
			["mp_m_freemode_01"] = {
    		    ["hat"] = { item = 121, texture = 0 },
    		    ["pants"] = { item = 87, texture = 0 },
    		    ["vest"] = { item = 22, texture = 8 },
    		    ["bracelet"] = { item = -1, texture = 0 },
    		    ["backpack"] = { item = 2, texture = 0 },
    		    ["decals"] = { item = 146, texture = 0 },
    		    ["mask"] = { item = 169, texture = 13 },
    		    ["shoes"] = { item = 110, texture = 0 },
    		    ["tshirt"] = { item = 131, texture = 0 },
    		    ["torso"] = { item = 94, texture = 0 },
    		    ["accessory"] = { item = 193, texture = 0 },
    		    ["watch"] = { item = -1, texture = 0 },
    		    ["arms"] = { item = 171, texture = 0 },
    		    ["glass"] = { item = 0, texture = 0 },
    		    ["ear"] = { item = -1, texture = 0 }
			}
    	},
    	[4] = { -- Agente Classe 1
			["mp_m_freemode_01"] = {
    		    ["hat"] = { item = 121, texture = 0 },
    		    ["pants"] = { item = 87, texture = 0 },
    		    ["vest"] = { item = 22, texture = 8 },
    		    ["bracelet"] = { item = -1, texture = 0 },
    		    ["backpack"] = { item = 2, texture = 0 },
    		    ["decals"] = { item = 146, texture = 0 },
    		    ["mask"] = { item = 169, texture = 13 },
    		    ["shoes"] = { item = 110, texture = 0 },
    		    ["tshirt"] = { item = 16, texture = 0 },
    		    ["torso"] = { item = 94, texture = 2 },
    		    ["accessory"] = { item = 197, texture = 0 },
    		    ["watch"] = { item = -1, texture = 0 },
    		    ["arms"] = { item = 171, texture = 0 },
    		    ["glass"] = { item = 0, texture = 0 },
    		    ["ear"] = { item = -1, texture = 0 }
			}
    	},
    	[5] = { -- Agente Especial
			["mp_m_freemode_01"] = {
    		    ["hat"] = { item = 121, texture = 0 },
    		    ["pants"] = { item = 87, texture = 0 },
    		    ["vest"] = { item = 7, texture = 0 },
    		    ["bracelet"] = { item = -1, texture = 0 },
    		    ["backpack"] = { item = 2, texture = 0 },
    		    ["decals"] = { item = 146, texture = 0 },
    		    ["mask"] = { item = 0, texture = 0 },
    		    ["shoes"] = { item = 110, texture = 0 },
    		    ["tshirt"] = { item = 242, texture = 5 },
    		    ["torso"] = { item = 53, texture = 0 },
    		    ["accessory"] = { item = 200, texture = 0 },
    		    ["watch"] = { item = -1, texture = 0 },
    		    ["arms"] = { item = 171, texture = 0 },
    		    ["glass"] = { item = 0, texture = 0 },
    		    ["ear"] = { item = -1, texture = 0 }
			}
    	},
		[6] = { -- Escrivão Civil
			["mp_m_freemode_01"] = {
    		    ["hat"] = { item = 121, texture = 0 },
    		    ["pants"] = { item = 198, texture = 0 },
    		    ["vest"] = { item = 0, texture = 0 },
    		    ["bracelet"] = { item = -1, texture = 0 },
    		    ["backpack"] = { item = 2, texture = 0 },
    		    ["decals"] = { item = 146, texture = 0 },
    		    ["mask"] = { item = 0, texture = 0 },
    		    ["shoes"] = { item = 111, texture = 0 },
    		    ["tshirt"] = { item = 160, texture = 0 },
    		    ["torso"] = { item = 36, texture = 0 },
    		    ["accessory"] = { item = 193, texture = 0 },
    		    ["watch"] = { item = -1, texture = 0 },
    		    ["arms"] = { item = 141, texture = 0 },
    		    ["glass"] = { item = 0, texture = 0 },
    		    ["ear"] = { item = -1, texture = 0 }
			}
    	},
    	[7] = { -- Perito Civil
			["mp_m_freemode_01"] = {
    		    ["hat"] = { item = 121, texture = 0 },
    		    ["pants"] = { item = 130, texture = 0 },
    		    ["vest"] = { item = 7, texture = 2 },
    		    ["bracelet"] = { item = -1, texture = 0 },
    		    ["backpack"] = { item = 2, texture = 0 },
    		    ["decals"] = { item = 146, texture = 0 },
    		    ["mask"] = { item = 0, texture = 0 },
    		    ["shoes"] = { item = 110, texture = 0 },
    		    ["tshirt"] = { item = 242, texture = 5 },
    		    ["torso"] = { item = 311, texture = 9 },
    		    ["accessory"] = { item = 193, texture = 0 },
    		    ["watch"] = { item = -1, texture = 0 },
    		    ["arms"] = { item = 85, texture = 0 },
    		    ["glass"] = { item = 0, texture = 0 },
    		    ["ear"] = { item = -1, texture = 0 }
			}
    	}
	},
	
	["Hospital"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 20, texture = 0 },
				["vest"] = { item = 13, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 8, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 321, texture = 0 },
				["accessory"] = { item = 126, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 209, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 23, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 6, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 332, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 49, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 87, texture = 0 },
				["vest"] = { item = 13, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 154, texture = 0 },
				["torso"] = { item = 322, texture = 0 },
				["accessory"] = { item = 126, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 209, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 11, texture = 1 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 190, texture = 0 },
				["torso"] = { item = 27, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 85, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[3] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 126, texture = 0 },
				["vest"] = { item = 13, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 21, texture = 0 },
				["tshirt"] = { item = 200, texture = 0 },
				["torso"] = { item = 131, texture = 0 },
				["accessory"] = { item = 126, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 205, texture = 1 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 100, texture = 9 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 3, texture = 0 },
				["torso"] = { item = 257, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 111, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[4] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 147, texture = 3 },
				["vest"] = { item = 13, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 134, texture = 0 },
				["tshirt"] = { item = 129, texture = 0 },
				["torso"] = { item = 132, texture = 0 },
				["accessory"] = { item = 4, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 4, texture = 2 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 23, texture = 2 },
				["tshirt"] = { item = 3, texture = 0 },
				["torso"] = { item = 357, texture = 4 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 9, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			
		},
	},

	["Prf"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 10, texture = 3 },
				["pants"] = { item = 130, texture = 6 },
				["vest"] = { item = 28, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 62, texture = 6 },
				["tshirt"] = { item = 214, texture = 0 },
				["torso"] = { item = 273, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 23, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 6, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 332, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 49, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[2] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 10, texture = 3 },
				["pants"] = { item = 130, texture = 6 },
				["vest"] = { item = 5, texture = 3 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 62, texture = 6 },
				["tshirt"] = { item = 214, texture = 0 },
				["torso"] = { item = 166, texture = 0 },
				["accessory"] = { item = 0, texture = 0 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 1, texture = 0 },
				["glass"] = { item = 65, texture = 11 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 11, texture = 1 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 190, texture = 0 },
				["torso"] = { item = 27, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 85, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
		[3] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 130, texture = 6 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -1, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 0, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 62, texture = 6 },
				["tshirt"] = { item = 106, texture = 0 },
				["torso"] = { item = 166, texture = 0 },
				["accessory"] = { item = 200, texture = 1 },
				["watch"] = { item = -1, texture = 0 },
				["arms"] = { item = 4, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 100, texture = 9 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 24, texture = 0 },
				["tshirt"] = { item = 3, texture = 0 },
				["torso"] = { item = 257, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 111, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
	},

	["EastCustoms"] = {
		[1] = {
			["mp_m_freemode_01"] = {
				["hat"] = { item = 2, texture = 0 },
				["pants"] = { item = 185, texture = 2 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 99, texture = 0 },
				["tshirt"] = { item = 19, texture = 0 },
				["torso"] = { item = 208, texture = 0 },
				["accessory"] = { item = 212, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 198, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
			["mp_f_freemode_01"] = {
				["hat"] = { item = -1, texture = 0 },
				["pants"] = { item = 23, texture = 0 },
				["vest"] = { item = 0, texture = 0 },
				["bracelet"] = { item = -2, texture = 0 },
				["backpack"] = { item = 0, texture = 0 },
				["decals"] = { item = 161, texture = 0 },
				["mask"] = { item = 0, texture = 0 },
				["shoes"] = { item = 6, texture = 0 },
				["tshirt"] = { item = 189, texture = 0 },
				["torso"] = { item = 332, texture = 0 },
				["accessory"] = { item = 96, texture = 0 },
				["watch"] = { item = -2, texture = 0 },
				["arms"] = { item = 49, texture = 0 },
				["glass"] = { item = 0, texture = 0 },
				["ear"] = { item = -1, texture = 0 }
			},
		},
	},

	
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Presets(Group)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		return List[Group]
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("dynamic:Preset")
AddEventHandler("dynamic:Preset",function(Key)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Group,Preset = Key:match("(.-)-(.*)")
		local Model = vRP.ModelPlayer(source)
		if Model == "mp_m_freemode_01" or "mp_f_freemode_01" then

			print(List[Group][tonumber(Preset)][Model])
			TriggerClientEvent("skinshop:Apply",source,List[Group][tonumber(Preset)][Model])
		end
	end
end)