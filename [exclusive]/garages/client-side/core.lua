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
Tunnel.bindInterface("garages",Creative)
vSERVER = Tunnel.getInterface("garages")
-----------------------------------------------------------------------------------------------------------------------------------------
-- DECOR
-----------------------------------------------------------------------------------------------------------------------------------------
DecorRegister("PlayerVehicle",3)
-----------------------------------------------------------------------------------------------------------------------------------------
-- hotwi
-----------------------------------------------------------------------------------------------------------------------------------------
local Opened = "1"
local Searched = nil
local Hotwired = false
local Cooldown = GetGameTimer()
local Anim = "machinic_loop_mechandplayer"
local Dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
local Nearest = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- hotwi
-----------------------------------------------------------------------------------------------------------------------------------------
local Garages = {
	["1"] = { x = 55.44, y = -876.17, z = 30.67,
		["1"] = { 60.44,-866.47,30.23,340.16 },
		["2"] = { 57.26,-865.35,30.25,340.16 },
		["3"] = { 54.03,-864.21,30.25,340.16 },
		["4"] = { 50.73,-863.01,30.26,340.16 },
		["5"] = { 60.52,-866.53,30.14,340.16 },
		["6"] = { 50.73,-873.28,30.11,158.75 },
		["7"] = { 47.36,-872.07,30.13,158.75 },
		["8"] = { 44.15,-870.9,30.13,158.75 },
	},
	["2"] = { x = 599.04, y = 2745.33, z = 42.04,
		["1"] = { 604.82,2738.27,41.64,187.09 },
		["2"] = { 601.75,2738.08,41.65,184.26 },
		["3"] = { 598.63,2737.85,41.69,184.26 },
		["4"] = { 595.59,2737.55,41.7,184.26 },
	},
	["3"] = { x = -136.8, y = 6356.84, z = 31.49,
		["1"] = { -133.72,6349.01,31.16,42.52 },
		["2"] = { -136.1,6346.53,31.16,42.52 },
	},
	["4"] = { x = 275.23, y = -345.56, z = 45.17,
		["1"] = { 266.06,-332.07,44.58,252.29 },
		["2"] = { 267.18,-328.9,44.58,252.29 },
		["3"] = { 268.32,-325.67,44.58,252.29 },
		["4"] = { 269.53,-322.4,44.58,252.29 },
		["5"] = { 270.77,-319.14,44.58,252.29 },
	},
	["5"] = { x = 596.43, y = 90.68, z = 93.13,
		["1"] = { 599.82,102.03,92.57,249.45 },
		["2"] = { 598.69,98.42,92.57,249.45 },
	},
	["6"] = { x = -340.57, y = 266.04, z = 85.68,
		["1"] = { -349.47,272.54,84.77,272.13 },
		["2"] = { -349.5,275.91,84.69,272.13 },
		["3"] = { -349.56,279.3,84.62,272.13 },
		["4"] = { -349.67,282.6,84.59,274.97 },
		["5"] = { -349.74,286.16,84.59,272.13 },
		["6"] = { -349.8,289.76,84.6,272.13 },
		["7"] = { -349.85,293.28,84.6,272.13 },
		["8"] = { -349.87,296.72,84.6,272.13 },
	},
	["7"] = { x = -2030.03, y = -465.99, z = 11.59,
		["1"] = { -2037.4,-461.02,11.07,138.9 },
		["2"] = { -2039.78,-459.07,11.07,138.9 },
		["3"] = { -2042.12,-457.1,11.07,138.9 },
		["4"] = { -2044.47,-455.11,11.07,138.9 },
		["5"] = { -2046.85,-453.09,11.07,138.9 },
		["6"] = { -2049.12,-451.17,11.07,138.9 },
		["7"] = { -2051.51,-449.23,11.07,138.9 },
	},
	["8"] = { x = -1184.94, y = -1509.99, z = 4.65,
		["1"] = { -1183.29,-1495.81,4.04,121.89 },
		["2"] = { -1185.23,-1493.28,4.04,121.89 },
		["3"] = { -1186.87,-1490.71,4.04,121.89 },
		["4"] = { -1188.69,-1488.27,4.04,121.89 }
	},
	["9"] = { x = 101.23, y = -1073.64, z = 29.37,
		["1"] = { 105.9,-1063.14,28.88,246.62 },
		["2"] = { 107.42,-1059.61,28.88,246.62 },
		["3"] = { 108.88,-1056.23,28.88,246.62 },
		["4"] = { 110.27,-1052.86,28.88,246.62 }
	},
	["10"] = { x = 213.97, y = -808.43, z = 31.0,
		["1"] = { 221.93,-804.11,30.35,249.45 },
		["2"] = { 222.9,-801.61,30.33,249.45 },
		["3"] = { 223.92,-799.2,30.33,249.45 },
		["4"] = { 224.85,-796.69,30.33,249.45 },
	},
	["11"] = { x = -348.89, y = -874.02, z = 31.31,
		["1"] = { -343.62,-875.51,30.75,167.25 },
		["2"] = { -339.98,-876.27,30.75,167.25 },
		["3"] = { -336.35,-876.98,30.75,167.25 },
		["4"] = { -332.72,-877.71,30.75,167.25 },
	},
	["12"] = { x = 67.72, y = 12.3, z = 69.22,
		["1"] = { 63.87,16.5,68.87,340.16 },
		["2"] = { 60.78,17.6,68.92,340.16 },
		["3"] = { 57.76,18.76,69.03,340.16 },
		["4"] = { 54.8,19.92,69.25,340.16 },
	},
	["13"] = { x = 361.96, y = 297.8, z = 103.88,
		["1"] = { 371.06,284.68,102.94,340.16 },
		["2"] = { 374.8,283.39,102.85,340.16 },
		["3"] = { 378.62,282.06,102.78,340.16 },
	},
	["14"] = { x = 1035.84, y = -763.87, z = 58.0,
		["1"] = { 1046.56,-774.55,57.69,90.71 },
		["2"] = { 1046.56,-778.24,57.68,90.71 },
		["3"] = { 1046.55,-782.0,57.68,90.71 },
		["4"] = { 1046.54,-785.65,57.66,90.71 },
	},
	["15"] = { x = -796.69, y = -2022.85, z = 9.17,
		["1"] = { -779.77,-2040.03,8.56,314.65 },
		["2"] = { -777.36,-2042.58,8.56,314.65 },
		["3"] = { -774.92,-2044.9,8.56,314.65 },
	},
	["16"] = { x = 453.28, y = -1146.77, z = 29.5,
		["1"] = { 467.33,-1151.89,28.96,85.04 },
		["2"] = { 467.16,-1154.75,28.96,85.04 },
		["3"] = { 467.1,-1157.73,28.96,87.88 },
	},
	["17"] = { x = 528.65, y = -146.25, z = 58.37,
		["1"] = { 540.99,-136.2,59.13,178.59 },
		["2"] = { 544.84,-136.25,59.01,178.59 },
		["3"] = { 548.83,-136.31,59.01,181.42 },
		["4"] = { 552.81,-136.41,58.99,178.59 },
	},
	["18"] = { x = -1159.56, y = -739.39, z = 19.88,
		["1"] = { -1144.95,-745.49,19.34,104.89 },
		["2"] = { -1142.76,-748.44,19.19,107.72 },
		["3"] = { -1140.18,-751.41,19.06,107.72 },
		["4"] = { -1137.99,-754.36,18.91,107.72 },
		["5"] = { -1135.43,-757.3,18.75,107.72 },
		["6"] = { -1133.12,-760.4,18.59,107.72 },
		["7"] = { -1130.59,-763.27,18.43,107.72 },
	},
	["19"] = { x = -791.48, y = 336.48, z = 85.7,
		["1"] = { -791.64,331.67,85.38,181.42 },
	},
	["20"] = { x = -800.45, y = 336.61, z = 85.7,
		["1"] = { -800.38,331.9,85.38,181.42 },
	},
	["21"] = { x = 935.95, y = 0.36, z = 78.76,
		["1"] = { 933.29,-3.74,78.44,147.41 },
	},
	["22"] = { x = 1725.21, y = 4711.77, z = 42.11,
		["1"] = { 1722.82,4700.38,42.28,87.88 },
	},
	["23"] = { x = 1624.05, y = 3566.14, z = 35.15,
		["1"] = { 1633.27,3563.91,34.91,303.31 },
	},
	["24"] = { x = 1143.8, y = 2667.46, z = 38.15,
		["1"] = { 1137.41,2674.26,37.83,0.0 },
	},
	["25"] = { x = -73.35, y = -2004.6, z = 18.27,
		["1"] = { -59.61,-1990.85,17.69,155.91 },
		["2"] = { -63.69,-1989.71,17.69,167.25 },
		["3"] = { -67.6,-1989.01,17.69,170.08 },
		["4"] = { -71.34,-1988.57,17.69,172.92 },
		["5"] = { -74.96,-1988.07,17.69,170.08 },
		["6"] = { -78.64,-1987.63,17.69,170.08 },
		["7"] = { -82.27,-1987.19,17.69,170.08 },
	},
	["26"] = { x = 1200.52, y = -1276.06, z = 35.22,
		["1"] = { 1206.23,-1270.21,35.03,175.75 },
	},
	["27"] = { x=-313.41,y=-1399.72,z=31.29,h=328.82,
		["1"] = {-301.84,-1402.72,31.29,87.88},
		["2"] = {-301.71,-1398.61,31.29,87.88},
	},
	["28"] = { x=-1039.27,y=-2730.72,z=20.2,h=243.78,
		["1"] = {-1045.14,-2723.6,20.07,243.78},
		["2"] = {-1037.55,-2728.6,20.05,240.95},
		["3"] = {-1029.91,-2732.09,20.08,238.12},
	},
	["29"] = { x=1278.03,y=-201.01,z=101.59,h=306.15,
		["1"] = {1283.36,-197.76,102.28,153.08},
	},
	["30"] = { x=1299.79,y=-2528.12,z=44.4,h=102.05,
		["1"] = {1289.12,-2531.85,44.26,311.82},
	},
	["31"] = { x=1366.92,y=-751.09,z=67.18,h=0.0,
		["1"] = {1368.51,-745.33,67.18,51.03},
	},
	["32"] = { x=2117.68,y=14.04,z=217.23,h=68.04,
		["1"] = {2109.45,14.31,216.89,317.49},
	},
	["33"] = { x=-2422.19,y=1780.28,z=187.47,h=136.07,
		["1"] = {-2424.39,1776.06,187.35,36.86},
	},
	["34"] = { x=-1514.62,y=268.55,z=66.05,h=303.31,
		["1"] = {-1512.85,275.04,66.59,218.27},
	},
	["35"] = { x=375.29,y=-11.16,z=82.99,h=39.69, 
		["1"] = {373.09,-12.85,82.99,36.86},
	},
	["36"] = { x=154.74,y=727.31,z=208.5,h=320.32,
		["1"] = {161.35,723.96,208.48,34.02},
	},
	["37"] = { x=1404.62,y=1114.37,z=114.83,h=5.67,
		["1"] = {1405.06,1118.91,114.83,85.04},
	},
	["38"] = { x=-465.61,y=-1366.45,z=27.06,h=82.21,
		["1"] = {-468.76,-1365.45,26.89,155.91},
	},
	["39"] = { x=-292.47,y=1497.33,z=336.91,h=269.3,
		["1"] = {-285.94,1492.46,336.37,354.34},
	},
	["40"] = { x=-1526.26,y=79.21,z=56.77,h=11.34,
		["1"] = {-1526.9,89.11,56.56,255.12},
	},	

	-- Hospital
	["41"] = { x=471.18,y=-1153.81,z=29.77,h=2.84,
		["1"] = { 469.86,-1150.9,29.35,0.0 },
	},
	["42"] = { x=458.13,y=-1112.63,z=43.07,h=2.84,
		["1"] = { 476.85,-1106.17,43.07,87.88 },
	},
	["43"] = { x=214.32,y=-1411.68,z=29.23,h=147.41,
	["1"] = { 214.7,-1415.44,29.22,53.86 },
},

	-- Policia Civil
	["60"] = {x= -2110.11, y= -560.46, z= 11.83, h= 243.78,
		["1"]  = { -2054.03,-573.2,11.86,56.7 },
	},
	["61"] = { x=-2123.56,y=-554.5,z=12.99,h=232.45,
		["1"] = { -2120.33,-561.73,12.54,235.28 },
	},
	
	-- Policia Militar
	["62"] = { x=914.25,y=-3131.53,z=6.17, h=90.71,
		["1"] = { 907.56,-3131.19,5.96,175.75 },
	},
	["63"] = { x=943.9,y=-3213.79,z=5.96,h=2.84,
	 	["1"] = { 947.12,-3208.62,5.96,8.51 },
	},
	["64"] = { x=941.48,y=-3192.1,z=6.17,h=181.42,
	 	["1"] = { 938.54,-3198.23,5.96,87.88 },
	},
	-- Batalhão Bope
	["65"] = { x=-244.68,y=1531.19,z=338.61,h=354.34,
	 	["1"] = { -244.58,1534.33,338.61,82.21 },
	},
	-- Batalhão Choque
	["66"] = { x=-498.42,y=-2378.37,z=14.29,h=167.25,
	 	["1"] = { -494.78,-2382.89,13.72,201.26 },
		["2"] = { -498.43,-2381.88,13.72,198.43 },
		["3"] = { -502.04,-2380.61,13.72,201.26 },
	},
	["69"] = { x=-306.03,y=6103.98,z=33.62,h=102.05,
	 	["1"] = { -310.58,6104.67,33.19,226.78 },
		["2"] = { -313.38,6101.66,33.19,229.61 },
	},
	["70"] = { x=2613.87,y=5365.57,z=48.12,h=291.97,
	 	["1"] = { 2613.86,5372.62,48.31,289.14 },
	},
	-- Policia Federal
	["71"] = { x=384.66,y=-765.28,z=29.37,h=189.93,
	 	["1"] = { 376.28,-767.41,29.28,0.0 },
	},
	-- Helicoptero BOPE
	["173"] = { x=-231.82,y=1528.67,z=336.46,h=351.5,
	["1"] = { -229.92,1533.95,336.74,85.04 }, 
},
	
	-- Ilegal
	["91"] = { x =-2201.2,y=-278.9,z=54.04,h=209.77,
		["1"] = { -2198.95,-281.31,53.82,320.32 },
	},
	["92"] = { x =-1787.43,y=2.52,z=85.66,h=136.07,
		["1"] = { -1787.01,-2.62,84.99,235.28 },
	},
	["93"] = { x=696.77,y=3816.93,z=36.13,h=2.84,
		["1"] = { 696.61,3820.66,35.92,266.46 },
	},
	["94"] = { x = -2125.64,y=2602.37,z=19.19,h=269.3,
		["1"] = { -2122.15,2602.0,19.01,175.75 },
	},
	["95"] = { x=-1986.14,y=2538.2,z=19.14,h=178.59,
		["1"] = { -1986.32,2534.46,18.99,85.04 },
	},
	["96"] = { x=-2341.81,y=2598.89,z=20.22,h=277.8,
		["1"] = { -2337.96,2598.9,20.02,167.25 },
	},
	["97"] = { x=-2522.9,y=2656.08,z=18.1,h=274.97,
		["1"] = { -2519.52,2655.34,17.91,170.08 },
	},
	["98"] = { x=1518.33,y=1401.51,z=100.93,h=102.05,
		["1"] = { 1515.1,1400.84,100.96,206.93 },
	},
	["99"] = { x=1646.58,y=3031.32,z=57.49,h=198.43,
		["1"] = { 1647.29,3027.64,57.29,283.47 },
	},
	["100"] = { x=2381.06,y=446.22,z=169.74,h=257.96,
		["1"] = { 2384.01,443.98,169.9,325.99 },
	},
	["101"] = { x=1820.84,y=-2185.17,z=150.99,h=189.93,
		["1"] = { 1821.09,-2190.43,150.57,184.26 },
	},
	["102"] = { x=1632.8,y=3222.3,z=43.94,h=96.38,
		["1"] = { 1628.97,3222.23,43.76,184.26 },
	},
	["103"] = { x=1498.55,y=2998.12,z=47.25,h=0.0,
		["1"] = { 1498.41,3001.48,47.13,96.38 },
	},
	["104"] = { x=2365.2,y=2671.02,z=50.99,h=19.85,
		["1"] = { 2363.94,2673.87,50.8,291.97 },
	},
	["105"] = { x=1906.5,y=6398.8,z=76.3,h=172.92,
		["1"] = { 1906.36,6395.28,76.11,87.88 },
	},
	["106"] = { x=2173.8,y=3934.7,z=37.44,h=119.06,
		["1"] = { 2170.61,3933.64,37.24,28.35 },
	},
	["107"] = { x=2482.78,y=3389.69,z=50.43,h=323.15,
		["1"] = { 2486.09,3391.52,50.18,42.52 },
	},
	["108"] = { x=570.73,y=2519.23,z=57.71,h=107.72,
		["1"] = { 567.1,2517.97,57.58,19.85 },
	},
	["109"] = { x=1892.54,y=34.96,z=188.58,h=59.53,
		["1"] = { 1889.66,37.18,188.4,314.65 },
	},
	["110"] = { x=1952.93,y=382.74,z=173.06,h=274.97,
		["1"] = { 1956.2,383.25,172.88,192.76 },
	},
	["111"] = { x=-752.67,y=-30.47,z=37.83,h=192.76,
		["1"] = { -750.39,-33.23,37.15,113.39 },
		["2"] = { -758.07,-36.29,37.68,113.39 },
	},
	["112"] = { x=-1271.68,y=-298.93,z=37.17,h=311.82,
		["1"] = { -1268.98,-296.22,37.31,206.93 },
	},

	["113"] = { x = 2249.69, y = 3562.7, z = 62.83, h = 348.67,
		["1"] = { 2249.5,3566.26,62.66,73.71 },
	},

	-- Boats
	["121"] = { x = -1728.06, y = -1050.69, z = 1.7, h = 325.99,
		["1"] = { -1734.05,-1057.01,0.94,133.23 },
	},
	["122"] = { x = 1966.55, y = 3976.15, z = 31.49, h = 167.25,
		["1"] = { 1971.66,3985.42,30.13,331.66 },
	},
	["123"] = { x = -776.63, y = -1494.93, z = 2.29, h = 286.3,
		["1"] = { -786.5,-1498.89,-0.57,110.56 },
	},
	["124"] = { x = -895.04, y = 5687.46, z = 3.03, h = 269.3,
		["1"] = { -907.5,5684.52,0.76,102.05 },
	},
	["125"] = { x = 1509.64, y = 3788.7, z = 33.51, h = 257.96,
		["1"] = { 1493.4,3797.23,29.89,50.19 },
	},
	["126"] = { x = 4971.79, y = -5170.93, z = 2.27, h =249.45,
		["1"] = { 4952.76,-5163.61,-0.39,65.2 },
	},
	
	-- Works
	["141"] = { x = 2434.96, y = 5012.06, z = 46.84,
		["1"] = { 2441.6,5010.56,45.76,277.8 },
	},
	["142"] = { x=1082.88,y=-1949.65,z=31.0,h=65.2,
		["1"] = { 1074.91,-1949.53,31.0,141.74 },
	},
	["143"] = { x=-725.94,y=-1687.5,z=25.0,h=0.0,
		["1"] = { -732.89,-1685.88,25.0,272.13 },
	},
	["144"] = { x=876.19,y=-2257.39,z=30.57,h=351.5,
		["1"] = { 873.76,-2249.14,30.45,76.54 },
		["2"] = { 884.66,-2235.53,30.57,161.58 },
	},
	["145"] = { x = 905.6, y = -165.08, z = 74.11, h = 221.11,
		["1"] = { 916.21,-170.61,74.04,99.22 },
		["2"] = { 918.35,-167.18,74.22,99.22 },
		["3"] = { 920.64,-163.54,74.43,99.22 },
	},
	["146"] = { x=-345.87,y=-1556.21,z=25.22,h=184.26,
		["1"] = { -334.21,-1564.82,25.22,56.7 },
	},
	["147"] = { x=284.25,y=2849.4,z=43.64,h=127.56,
		["1"] = { 277.34,2840.0,43.29,28.35 },
	},
	["148"] = { x=-428.18,y=6161.91,z=31.48,h=39.69,
		["1"] = { -422.42,6172.82,31.48,311.82 },
	},
	["149"] = { x = 1695.55, y = 4787.69, z = 42.01,
		["1"] = { 1691.56,4782.3,41.52,87.88 },
		["2"] = { 1691.54,4778.38,41.53,87.88 },
		["3"] = { 1691.56,4774.37,41.53,87.88 },
		["4"] = { 1691.57,4770.32,41.53,87.88 },
		["5"] = { 1691.5,4766.35,41.53,87.88 },
		["6"] = { 1691.52,4762.46,41.52,87.88 },
	},
	["150"] = { x = 1241.65, y = -3262.85, z = 5.53,
		["1"] = { 1271.56,-3287.96,6.10,91.00 },
		["2"] = { 1271.82,-3282.63,6.10,91.00 },
		["3"] = { 1271.95,-3271.04,6.10,91.00 },
		["4"] = { 1272.11,-3266.03,6.10,91.00 },
	},
	["151"] = { x = 453.74, y = -600.6, z = 28.59, h = 263.63,
		["1"] = { 462.81,-606.03,28.49,212.6 },
		["2"] = { 461.54,-612.34,28.49,215.44 },
		["3"] = { 460.98,-619.81,28.49,215.44 },
	},
	["152"] = { x=-215.7,y=6219.25,z=31.49,h=235.28,
		["1"] = { -211.68,6198.4,31.49,121.89 },
	},
	["153"] = { x=115.8,y=102.06,z=81.01,h=164.41,
		["1"] = { 115.39,93.75,80.93,62.37 },
	},
	["154"] = { x=2307.24,y=4881.57,z=41.8,h=48.19,
		["1"] = { 2294.66,4891.75,41.25,317.49 },
	},
	["155"] = { x=2258.17,y=5166.06,z=59.11,h=232.45,
		["1"] = { 2263.14,5156.83,58.03,240.95 },
		["2"] = { 2257.75,5159.93,58.11,150.24 },
	},
	["156"] = { x=2145.79,y=4781.95,z=40.98,h=102.05,
		["1"] = { 2132.83,4784.6,40.96,22.68 },
	},
	["157"] = { x=-1273.09,y=-301.95,z=36.82,h=99.22,
		["1"] = { -1280.54,-301.18,36.82,212.6 },
	},
--[[ 	["158"] = { x=-1271.45,y=-299.03,z=37.17,h=303.31,
		["1"] = { -1268.45,-296.82,37.27,209.77  },
	}, ]]

	["159"] = { x=284.77,y=-578.1,z=43.2,h=212.6,
		["1"] = {282.62,-581.27,43.15,76.54},
		["2"] = {281.79,-583.84,43.15,87.88},
		["3"] = {280.62,-586.36,43.12,79.38},
	},
	["160"] = { x=2621.89,y=5313.26,z=47.53,h=130.4,
		["1"] = {2618.27,5309.0,47.42,104.89},
		["2"] = {2619.24,5305.71,47.42,110.56},
		["3"] = {2620.41,5302.62,47.42,110.56},
	},
	["161"] = { x=-696.48,y=-1688.86,z=25.0,h=195.6,
		["1"] = {-702.02,-1689.34,25.0,5.67},
		["2"] = {-704.94,-1689.38,25.0,2.84},
		["3"] = {-707.53,-1689.34,25.0,0.0},
	},
	["162"] = { x=635.08,y=10.08,z=82.78,h=201.26,
	 	["1"] = { 640.22,8.48,82.78,223.94 },
		["2"] = { 638.58,-2.45,82.78,246.62 },
	},
	["163"] = { x=-2270.28,y=3185.02,z=32.81,h=175.75,
	 	["1"] = { -2288.17,3182.48,32.81,238.12 },
	},
	["164"] = { x=-1836.22,y=2969.2,z=32.81,h=28.35,
	 	["1"] = { -1826.59,2974.17,32.81,59.53 },
	},
	["165"] = { x=-542.92,y=-2355.82,z=14.14,h=229.61,
	 	["1"] = { -538.94,-2356.91,13.72,204.1 },
		["2"] = { -535.35,-2357.16,13.72,198.43 },
	},
	["166"] = { x=-2054.22,y=-525.78,z=12.01,h=320.32,
	["1"] = { -2052.31,-523.95,11.39,235.28 },
	["2"] = { -2049.77,-521.26,11.39,229.61 },
	},
	["167"] = { x=-281.48,y=6128.01,z=33.58,h=260.79,
	["1"] = { -281.26,6124.42,32.86,226.78 },
	["2"] = { -283.12,6122.39,32.84,226.78 },
	},
	["168"] = { x=-1400.54,y=5107.26,z=62.24,h=212.6,
	["1"] = { -1401.38,5102.55,61.16,215.44 },
	},
	["169"] = { x=-246.25,y=1527.84,z=338.56,h=170.08,
	["1"] = { -247.25,1525.63,338.14,79.38 },
	},
	["171"] = { x=1339.92,y=-745.22,z=67.25,h=0.0, --garagem egito
	["1"] = { 1333.69,-747.91,67.18,343.0 },
	},
	["172"] = { x=1451.5,y=-725.32,z=85.38,h=286.3, --garagem egito vip fac
	["1"] = { 1460.05,-722.46,85.68,79.38 },
	},
	["170"] = { x=-1409.72,y=5124.93,z=62.58,h=215.44,
	["1"] = { -1407.48,5124.24,62.16,198.43 },
	["2"] = { -1404.87,5125.17,62.16,201.26 },
},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEMODS
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleMods(Vehicle,Customize)
	if Customize then
		SetVehicleModKit(Vehicle,0)

		if Customize["wheeltype"] ~= nil then
			SetVehicleWheelType(Vehicle,Customize["wheeltype"])
		end

		if Customize["mods"] then

			for i = 0,16 do
				if Customize["mods"][tostring(i)] ~= nil then
					SetVehicleMod(Vehicle,i,Customize["mods"][tostring(i)])
				end
			end

			for i = 17,22 do
				if Customize["mods"][tostring(i)] ~= nil then
					ToggleVehicleMod(Vehicle,i,Customize["mods"][tostring(i)])
				end
			end

			for i = 23,24 do
				if Customize["mods"][tostring(i)] ~= nil then
					if not Customize["var"] then
						Customize["var"] = {}
						Customize["var"][tostring(i)] = 0
					end

					SetVehicleMod(Vehicle,i,Customize["mods"][tostring(i)],Customize["var"][tostring(i)])
				end
			end

			for i = 25,48 do
				if Customize["mods"][tostring(i)] ~= nil then
					SetVehicleMod(Vehicle,i,Customize["mods"][tostring(i)])
				end
			end
		end

		if Customize["neon"] ~= nil then
			for i = 0,3 do
				SetVehicleNeonLightEnabled(Vehicle,i,Customize["neon"][tostring(i)])
			end
		end

		if Customize["extras"] ~= nil then
			for i = 1,12 do
				local onoff = tonumber(Customize["extras"][i])
				if onoff == 1 then
					SetVehicleExtra(Vehicle,i,0)
				else
					SetVehicleExtra(Vehicle,i,1)
				end
			end
		end

		if Customize["liverys"] ~= nil and Customize["liverys"] ~= 24  then
			SetVehicleLivery(Vehicle,Customize["liverys"])
		end

		if Customize["plateIndex"] ~= nil and Customize["plateIndex"] ~= 4 then
			SetVehicleNumberPlateTextIndex(Vehicle,Customize["plateIndex"])
		end

		if Customize["customPcolor"]['1'] then
			SetVehicleCustomPrimaryColour(Vehicle,Customize["customPcolor"]['1'],Customize["customPcolor"]['2'],Customize["customPcolor"]['3'])
			SetVehicleCustomSecondaryColour(Vehicle,Customize["customScolor"]['1'],Customize["customScolor"]['2'],Customize["customScolor"]['3'])
		else
			SetVehicleCustomPrimaryColour(Vehicle,Customize["customPcolor"][1],Customize["customPcolor"][2],Customize["customPcolor"][3])
			SetVehicleCustomSecondaryColour(Vehicle,Customize["customScolor"][1],Customize["customScolor"][2],Customize["customScolor"][3])
		end

		SetVehicleXenonLightsColour(Vehicle,Customize["xenonColor"])
		SetVehicleColours(Vehicle,Customize["colors"][1],Customize["colors"][2])
		SetVehicleExtraColours(Vehicle,Customize["extracolors"][1],Customize["extracolors"][2])
		SetVehicleNeonLightsColour(Vehicle,Customize["lights"][1],Customize["lights"][2],Customize["lights"][3])
		SetVehicleTyreSmokeColor(Vehicle,Customize["smokecolor"][1],Customize["smokecolor"][2],Customize["smokecolor"][3])

		if Customize["tint"] ~= nil then
			SetVehicleWindowTint(Vehicle,Customize["tint"])
		end

		if Customize["dashColour"] ~= nil then
			SetVehicleInteriorColour(Vehicle,Customize["dashColour"])
		end

		if Customize["interColour"] ~= nil then
			SetVehicleDashboardColour(Vehicle,Customize["interColour"])
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWNPOSITION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.SpawnPosition(Select)

	local Slot = "0"
	local Checks = 0
	local Selected = {}
	local Position = nil

	repeat
		Checks = Checks + 1
		Slot = tostring(Checks)
		if Nearest[Select][Slot] ~= nil then
			local _,Groundz = GetGroundZAndNormalFor_3dCoord(Nearest[Select][Slot][1],Nearest[Select][Slot][2],Nearest[Select][Slot][3])
			Selected = { Nearest[Select][Slot][1],Nearest[Select][Slot][2],Groundz,Nearest[Select][Slot][4] }
			Position = GetClosestVehicle(Selected[1],Selected[2],Selected[3],2.501,0,71)
		end
	until not DoesEntityExist(Position) or not Nearest[Select][Slot]

	if not Nearest[Select][tostring(Checks)] then
		TriggerEvent("Notify","amarelo","Vagas estão ocupadas.",5000)
		return false
	end

	return Selected
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CREATEVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CreateVehicle(Model,Network,Engine,Health,Customize,Windows,Tyres,Notebook)
	if NetworkDoesNetworkIdExist(Network) then
		local Vehicle = NetToEnt(Network)
		if DoesEntityExist(Vehicle) then
			if Customize ~= nil then
				local Mods = json.decode(Customize)
				VehicleMods(Vehicle,Mods)
			end

			SetVehicleEngineHealth(Vehicle,Engine + 0.0)
			SetEntityHealth(Vehicle,Health)

			if Windows then
				local Windows = json.decode(Windows)
				if Windows ~= nil then
					for k,v in pairs(Windows) do
						if not v then
							RemoveVehicleWindow(Vehicle,parseInt(k))
						end
					end
				end
			end

			if Tyres then
				local Tyres = json.decode(Tyres)
				if Tyres ~= nil then
					for k,Burst in pairs(Tyres) do
						if Burst then
							SetVehicleTyreBurst(Vehicle,parseInt(k),true,1000.0)
						end
					end
				end
			end

			if Notebook then
				local Notebook = json.decode(Notebook)
				SetVehicleHandlingFloat(Vehicle,"CHandlingData","fInitialDriveForce",Notebook["boost"] * 1.0)
				SetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionBiasFront",Notebook["trafront"] * 1.0)
				SetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveLateral",Notebook["curve"] * 1.0)
				SetVehicleHandlingFloat(Vehicle,"CHandlingData","fLowSpeedTractionLossMult",Notebook["lowspeed"] * 1.0)
				SetVehicleHandlingFloat(Vehicle,"CHandlingData","fClutchChangeRateScaleUpShift",Notebook["clutchup"] * 1.0)
				SetVehicleHandlingFloat(Vehicle,"CHandlingData","fClutchChangeRateScaleDownShift",Notebook["clutchdown"] * 1.0)
			end

			
			if not DecorExistOn(Vehicle,"PlayerVehicle") then
				DecorSetInt(Vehicle,"PlayerVehicle",-1)
			end

			SetModelAsNoLongerNeeded(Model)
		end
	end

	SendNUIMessage({ action = "Visible", data = false })
	SetNuiFocus(false,false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:DELETE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("garages:Delete")
AddEventHandler("garages:Delete",function(Vehicle)
	if not Vehicle or Vehicle == "" then
		Vehicle = vRP.ClosestVehicle(15)
	end

	if IsEntityAVehicle(Vehicle) then
		local Tyres = {}
		local Doors = {}
		local Windows = {}

		for i = 0,5 do
			Doors[i] = IsVehicleDoorDamaged(Vehicle,i)
		end

		for i = 0,5 do
			Windows[i] = IsVehicleWindowIntact(Vehicle,i)
		end

		for i = 0,7 do
			local Status = false

			if GetTyreHealth(Vehicle,i) ~= 1000.0 then
				Status = true
			end

			Tyres[i] = Status
		end

		if DecorExistOn(Vehicle,"PlayerVehicle") then
			DecorRemove(Vehicle,"PlayerVehicle")
		end

		vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SEARCHBLIP
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.SearchBlip(Coords)
	if DoesBlipExist(Searched) then
		RemoveBlip(Searched)
		Searched = nil
	end

	Searched = AddBlipForCoord(Coords["x"],Coords["y"],Coords["z"])
	SetBlipSprite(Searched,225)
	SetBlipColour(Searched,2)
	SetBlipScale(Searched,0.6)
	SetBlipAsShortRange(Searched,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Veículo")
	EndTextCommandSetBlipName(Searched)

	SetTimeout(30000,function()
		RemoveBlip(Searched)
		Searched = nil
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTHOTWIRED
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.StartHotwired()
	Hotwired = true
	if LoadAnim(Dict) then
		TaskPlayAnim(PlayerPedId(),Dict,Anim,8.0,8.0,-1,49,5.0,0,0,0)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- STOPHOTWIRED
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.StopHotwired(Vehicle)
	Hotwired = false
	if LoadAnim(Dict) then
		StopAnimTask(PlayerPedId(),Dict,Anim,8.0)
	end
	if Vehicle then
		SetEntityAsMissionEntity(Vehicle,true,false)
		SetVehicleHasBeenOwnedByPlayer(Vehicle,true)
		SetVehicleNeedsToBeHotwired(Vehicle,false)
		if not DecorExistOn(Vehicle,"PlayerVehicle") then
			DecorSetInt(Vehicle,"PlayerVehicle",-1)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATEHOTWIRED
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.UpdateHotwired(Status)
	Hotwired = Status
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOOPHOTWIRED
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		if LocalPlayer["state"]["Route"] == 0 then
			local Ped = PlayerPedId()
			if IsPedInAnyVehicle(Ped) then
				local Vehicle = GetVehiclePedIsUsing(Ped)
				local Plate = GetVehicleNumberPlateText(Vehicle)
				--[[ and not Entity(Vehicle)["state"]["Lockpick"] ]]
				if not GlobalState["Plates"][Plate] and GetPedInVehicleSeat(Vehicle,-1) == Ped and "AUTOESCO" ~= Plate then
					SetVehicleEngineOn(Vehicle,false,true,true)
					DisablePlayerFiring(Ped,true)
					TimeDistance = 1
				end
				if Hotwired and Vehicle then
					DisableControlAction(1,75,true)
					DisableControlAction(1,20,true)
					TimeDistance = 1
				end
			end
		end
		Wait(TimeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:IMPOUND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("garages:Impound")
AddEventHandler("garages:Impound",function()
	local Impound = vSERVER.Impound()
	if parseInt(#Impound) > 0 then
		for k,v in pairs(Impound) do
			if v["Price"] then
				exports["dynamic"]:AddButton(v["name"],"A liberação tem o custo: <b>R$"..parseFormat(v["Price"] * 0.15).."</b> reais.","garages:Impound",v["Model"],false,true)
			else
				exports["dynamic"]:AddButton(v["name"],"A liberação tem o custo: <b>R$"..parseFormat(v["Gemstone"] * 0.15).."</b> Gemas.","garages:Impound",v["Model"],false,true)
			end
		end
		exports["dynamic"]:openMenu()
	else
		TriggerEvent("Notify","amarelo","Não possui veículos apreendidos.",5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		if not IsPedInAnyVehicle(Ped) then
			local Coords = GetEntityCoords(Ped)
			for Key,Value in pairs(Garages) do
				if 20 >= #(Coords - vec3(Value["x"],Value["y"],Value["z"])) then
					if not Nearest[Key] then
						Nearest[Key] = Value
					end
				else
					if Nearest[Key] ~= nil then
						Nearest[Key] = nil
					end
				end
			end
			for Key,Value in pairs(exports["propertys"]:Garages()) do
				if 20 >= #(Coords - vec3(Value["x"],Value["y"],Value["z"])) then
					if not Nearest["Home:"..Key] then
						Nearest["Home:"..Key] = Value
					end
				else
					if Nearest["Home:"..Key] ~= nil then
						Nearest["Home:"..Key] = nil
					end
				end
			end
		end
        Wait(1000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		local Ped = PlayerPedId()
		if not IsPedInAnyVehicle(Ped) and arrayLength(Nearest) > 0 then
			local Coords = GetEntityCoords(Ped)
			for Key,v in pairs(Nearest) do
				local Distance = #(Coords - vec3(v["x"],v["y"],v["z"]))
				if Distance <= 30 then
					TimeDistance = 0
					if Distance <= 1.5 then
						if IsControlJustPressed(1,38) then
							local garagem = vSERVER.Vehicles(Key)
							if garagem then
								Opened = Key
								SetNuiFocus(true,true)
								SendNUIMessage({ action = "Visible", data = true })
								SendNUIMessage({ action = "OpenGarage", data = garagem })
							end	
						end
					end
					DrawMarker(36, v["x"], v["y"], v["z"] - 0.27, 0, 0, 0, 0, 0, 0, 0.7, 0.7, 0.7, 255, 0, 0, 155, 1, 1, 1, 1)
					DrawMarker(27, v["x"], v["y"], v["z"] - 0.97, 0, 0, 0, 0, 0, 0, 0.6, 0.6, 0.5, 255, 0, 0, 155, 0, 0, 0, 1)
					DrawMarker(27, v["x"], v["y"], v["z"] - 0.97, 0, 0, 0, 0, 0, 0, 0.8, 0.8, 0.5, 255, 0, 0, 155, 0, 0, 0, 1)								
				end
			end
		end
        Wait(TimeDistance)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
function arrayLength(array)
	local len = 0
    if array ~= nil then
        for key,value in pairs(array) do 
            if array[key] then
                len = len+1
            end
	    end
    end
	return len
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local Tables = {}
	for Number,v in pairs(Garages) do
		Garages[Number] = {
			["x"] = v["x"],
			["y"] = v["y"],
			["z"] = v["z"],
			["1"] = v["1"]
		}
		Tables[#Tables + 1] = { v["x"],v["y"],v["z"],0.75,"E","Garagem","Pressione para abrir" }
    end
	for Number,v in pairs(exports["propertys"]:Garages()) do
		Garages["Home:"..Number] = {
			["x"] = v["x"],
			["y"] = v["y"],
			["z"] = v["z"],
			["1"] = v["1"]
		}
		Tables[#Tables + 1] = { v["x"],v["y"],v["z"],0.75,"E","Garagem","Pressione para abrir" }
    end
	TriggerEvent("hoverfy:Insert",Tables)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:LOCKVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("garages:LockVehicle")
AddEventHandler("garages:LockVehicle",function(Vehicle)
	if NetworkDoesNetworkIdExist(Vehicle) then
		local Network = NetToEnt(Vehicle)
		if DoesEntityExist(Network) then
			SetVehicleLights(Network,2)
			Wait(200)
			SetVehicleLights(Network,0)
			Wait(200)
			SetVehicleLights(Network,2)
			Wait(200)
			SetVehicleLights(Network,0)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	SendNUIMessage({ action = "Visible", data = false })
	SetNuiFocus(false,false)
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKEVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("takeVehicle",function(Data,Callback)
	if GetGameTimer() >= Cooldown then
		Cooldown = GetGameTimer() + 5000
		vSERVER.Spawn(Data["model"],Opened)
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STOREVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("storeVehicle",function(Data,Callback)
	if GetGameTimer() >= Cooldown then
		Cooldown = GetGameTimer() + 5000
		local Vehicle = vRP.ClosestVehicle(15)
		if vSERVER.checkOwner(GetVehicleNumberPlateText(Vehicle)) then
			if IsEntityAVehicle(Vehicle) then
				local Tyres = {}
				local Doors = {}
				local Windows = {}
		
				for i = 0,5 do
					Doors[i] = IsVehicleDoorDamaged(Vehicle,i)
				end
		
				for i = 0,5 do
					Windows[i] = IsVehicleWindowIntact(Vehicle,i)
				end
		
				for i = 0,7 do
					local Status = false
		
					if GetTyreHealth(Vehicle,i) ~= 1000.0 then
						Status = true
					end
		
					Tyres[i] = Status
				end
		
				if DecorExistOn(Vehicle,"PlayerVehicle") then
					DecorRemove(Vehicle,"PlayerVehicle")
				end
		
				vSERVER.Delete(VehToNet(Vehicle),GetEntityHealth(Vehicle),GetVehicleEngineHealth(Vehicle),GetVehicleBodyHealth(Vehicle),GetVehicleFuelLevel(Vehicle),Doors,Windows,Tyres,GetVehicleNumberPlateText(Vehicle))
			end
		end
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SELLVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sellVehicle",function(Data,Callback)
	SendNUIMessage({ action = "Visible", data = false })
	SetNuiFocus(false,false)

	vSERVER.Sell(Data["model"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRANSFERVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("transferVehicle",function(Data,Callback)
	SendNUIMessage({ action = "Visible", data = false })
	SetNuiFocus(false,false)

	vSERVER.Transfer(Data["model"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAXVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("taxVehicle",function(Data,Callback)
	SendNUIMessage({ action = "Visible", data = false })
	SetNuiFocus(false,false)
	vSERVER.Tax(Data["model"])

	Callback("Ok")
end)
