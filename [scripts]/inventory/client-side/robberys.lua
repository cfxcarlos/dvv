-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBERSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
local Barbershop = {
	["1"] = vec4(-807.9,-180.83,37.32,299.3),
	["2"] = vec4(139.56,-1704.12,29.05,320.25),
	["3"] = vec4(-1278.11,-1116.66,6.75,270.07),
	["4"] = vec4(1928.89,3734.04,32.6,29.2),
	["5"] = vec4(1217.05,-473.45,65.96,255.89),
	["6"] = vec4(-34.08,-157.01,56.83,159.63),
	["7"] = vec4(-274.5,6225.27,31.45,225.27)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEAPONSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
local Weaponshop = {
	["1"] = vec4(1688.78,3759.13,34.46,47.5),
	["2"] = vec4(256.35,-47.51,69.7,249.76),
	["3"] = vec4(846.13,-1036.62,27.95,178.74),
	["4"] = vec4(-335.18,6083.29,31.21,45.57),
	["5"] = vec4(-665.98,-932.24,21.58,358.38),
	["6"] = vec4(-1301.93,-391.36,36.45,255.85),
	["7"] = vec4(-1122.59,2698.25,18.31,42.82),
	["8"] = vec4(2571.67,291.28,108.49,180.02),
	["9"] = vec4(2571.66,291.29,108.49,181.06),
	["10"] = vec4(19.57,-1103.0,29.55,339.07),
	["11"] = vec4(813.92,-2160.34,29.37,179.33)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TATTOOSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tattooshop = {
	["1"] = vec4(1327.98,-1654.78,52.03,218.71),
	["2"] = vec4(-1149.04,-1428.64,4.71,215.2),
	["3"] = vec4(322.01,186.24,103.34,339.28),
	["4"] = vec4(-3175.64,1075.54,20.58,65.96),
	["5"] = vec4(1866.01,3748.07,32.79,299.38),
	["6"] = vec4(-295.51,6199.21,31.24,133.05)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FLEECAS
-----------------------------------------------------------------------------------------------------------------------------------------
local Fleecas = {
	["1"] = vec3(-1210.46,-336.45,38.10),
	["2"] = vec3(-353.54,-55.44,49.36),
	["3"] = vec3(311.51,-284.59,54.48),
	["4"] = vec3(147.18,-1046.23,29.68),
	["5"] = vec3(-2956.50,482.09,16.01),
	["6"] = vec3(1175.69,2712.89,38.41)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPARTMENTSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
local Departmentshop = {
	["1"] = vec3(28.19,-1338.87,28.95),
	["2"] = vec3(2548.94,384.86,108.11),
	["3"] = vec3(1159.21,-314.09,68.7),
	["4"] = vec3(-710.03,-904.16,18.69),
	["5"] = vec3(-43.67,-1748.18,28.91),
	["6"] = vec3(378.23,333.7,103.07),
	["7"] = vec3(-3250.35,1004.4,12.32),
	["8"] = vec3(1734.94,6421.13,34.52),
	["9"] = vec3(546.48,2662.5,41.66),
	["10"] = vec3(1959.1,3749.18,31.83),
	["11"] = vec3(2672.49,3286.77,54.72),
	["12"] = vec3(1708.07,4920.69,41.56),
	["13"] = vec3(-1829.41,798.55,137.68),
	["14"] = vec3(-2959.64,386.81,14.0),
	["15"] = vec3(-3048.13,585.5,7.4),
	["16"] = vec3(1126.76,-979.81,45.38),
	["17"] = vec3(1169.59,2717.84,37.11),
	["18"] = vec3(-1478.7,-375.64,39.12),
	["19"] = vec3(-1221.08,-916.18,11.29)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOTHESHOP
-----------------------------------------------------------------------------------------------------------------------------------------
local Clotheshop = {
	["1"] = vec4(70.27,-1389.11,29.13,90.28),
	["2"] = vec4(-706.01,-150.49,37.17,28.61),
	["3"] = vec4(-167.66,-301.67,39.49,161.34),
	["4"] = vec4(-821.69,-1067.22,11.08,31.23),
	["5"] = vec4(-1186.62,-772.55,17.09,215.93),
	["6"] = vec4(-1446.85,-240.38,49.57,316.88),
	["7"] = vec4(5.53,6506.07,31.63,222.68),
	["8"] = vec4(1699.51,4819.72,41.82,277.02),
	["9"] = vec4(117.83,-223.56,54.31,70.89),
	["10"] = vec4(621.58,2765.81,41.84,275.02),
	["11"] = vec4(1200.46,2715.37,37.98,0.24),
	["12"] = vec4(-3178.48,1044.46,20.62,66.61),
	["13"] = vec4(-1102.05,2716.93,18.86,40.85),
	["14"] = vec4(430.72,-810.01,29.25,270.35)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANKS
-----------------------------------------------------------------------------------------------------------------------------------------
local Banks = {
	["1"] = { vec3(264.89,219.87,101.67) },
	["2"] = { vec3(-105.89,6472.16,31.87) }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADROBBERY
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	exports["target"]:AddCircleZone("Robberys:Jewelry",vec3(-631.04,-230.6,38.01),0.25,{
		name = "Robberys:Jewelry",
		heading = 0.0,
		useZ = true
	},{
		shop = "jewelry",
		Distance = 1.25,
		options = {
			{
				event = "inventory:Robberys",
				tunnel = "police",
				label = "Roubar",
				service = 1
			}
		}
	})

	for Number,v in pairs(Banks) do
		exports["target"]:AddCircleZone("Robberys:Banks:"..Number,v[1],0.5,{
			name = "Robberys:Banks:"..Number,
			heading = 0.0,
			useZ = true
		},{
			shop = "banks",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end

	for Number,v in pairs(Barbershop) do
		exports["target"]:AddBoxZone("Robberys:Barbershop:"..Number,v["xyz"],0.9,0.9,{
			name = "Robberys:Barbershop:"..Number,
			heading = v["w"],
			minZ = v["z"] - 0.75,
			maxZ = v["z"] + 0.75
		},{
			shop = "barbershop",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end

	for Number,v in pairs(Weaponshop) do
		exports["target"]:AddBoxZone("Robberys:Weaponshop:"..Number,v["xyz"],0.9,0.9,{
			name = "Robberys:Weaponshop:"..Number,
			heading = v["w"],
			minZ = v["z"] - 0.75,
			maxZ = v["z"] + 0.75
		},{
			shop = "weaponshop",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end

	for Number,v in pairs(Tattooshop) do
		exports["target"]:AddBoxZone("Robberys:Tattooshop:"..Number,v["xyz"],0.9,0.9,{
			name = "Robberys:Tattooshop:"..Number,
			heading = v["w"],
			minZ = v["z"] - 0.75,
			maxZ = v["z"] + 0.75
		},{
			shop = "tattooshop",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end

	for Number,v in pairs(Fleecas) do
		exports["target"]:AddCircleZone("Robberys:Fleecas:"..Number,v,0.5,{
			name = "Robberys:Fleecas:"..Number,
			heading = 0.0,
			useZ = true
		},{
			shop = "fleecas",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end

	for Number,v in pairs(Departmentshop) do
		exports["target"]:AddCircleZone("Robberys:Departmentshop:"..Number,v,0.5,{
			name = "Robberys:Departmentshop:"..Number,
			heading = 0.0,
			useZ = true
		},{
			shop = "departmentshop",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end

	for Number,v in pairs(Clotheshop) do
		exports["target"]:AddBoxZone("Robberys:Clotheshop:"..Number,v["xyz"],0.9,0.9,{
			name = "Robberys:Clotheshop:"..Number,
			heading = v["w"],
			minZ = v["z"] - 0.75,
			maxZ = v["z"] + 0.75
		},{
			shop = "clotheshop",
			Distance = 1.25,
			options = {
				{
					event = "inventory:Robberys",
					tunnel = "police",
					label = "Roubar",
					service = Number
				}
			}
		})
	end
end)