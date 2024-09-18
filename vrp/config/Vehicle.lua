-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	-- Boats
		["dinghy"] = {
			["Name"] = "Dinghy",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["dinghy2"] = {
			["Name"] = "Dinghy 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},	
		["dinghy3"] = {
			["Name"] = "Dinghy 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["dinghy4"] = {
			["Name"] = "Dinghy 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["jetmax"] = {
			["Name"] = "Jetmax",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["marquis"] = {
			["Name"] = "Marquis",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["seashark"] = {
			["Name"] = "Seashark",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["seashark2"] = {
			["Name"] = "Seashark 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["seashark3"] = {
			["Name"] = "Seashark 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["speeder"] = {
			["Name"] = "Speeder",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["speeder2"] = {
			["Name"] = "Speeder 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["squalo"] = {
			["Name"] = "Squalo",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["submersible"] = {
			["Name"] = "Submersible",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["submersible2"] = {
			["Name"] = "Submersible 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["suntrap"] = {
			["Name"] = "Suntrap",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["toro"] = {
			["Name"] = "Toro",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["toro2"] = {
			["Name"] = "Toro 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["tropic"] = {
			["Name"] = "Tropic",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["tropic2"] = {
			["Name"] = "Tropic 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["tug"] = {
			["Name"] = "Tug",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["avisa"] = {
			["Name"] = "Avisa",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["dinghy5"] = {
			["Name"] = "Dinghy 5",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["kosatka"] = {
			["Name"] = "Kosatka",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["longfin"] = {
			["Name"] = "Longfin",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["patrolboat"] = {
			["Name"] = "Patrolboat",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
	
		-- Veiculos Nova Moda
		-- ["150"] = {
		-- 	["Name"] = "CG 150",
		-- 	["Weight"] = 160,
		-- 	["Price"] = 400000,
		-- 	["Mode"] = "Rental",
		-- 	["Gemstone"] = 5000,
		-- 	["Class"] = "Motocicletas"
		-- },
		["amarok"] = {
			["Name"] = "Amarok",
			["Weight"] = 160,
			["Price"] = 2500000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["biz25"] = {
			["Name"] = "Biz 25",
			["Weight"] = 160,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["golcopa"] = {
			["Name"] = "Gol",
			["Weight"] = 160,
			["Price"] = 200000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["monza"] = {
			["Name"] = "Monza",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["cb2020"] = {
			["Name"] = "CB2020",
			["Weight"] = 160,
			["Price"] = 500000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["cbtwister"] = {
			["Name"] = "CB TWISTER",
			["Weight"] = 160,
			["Price"] = 750000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["golg4"] = {
			["Name"] = "Gol G4",
			["Weight"] = 160,
			["Price"] = 300000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["pajero4"] = {
			["Name"] = "Pajero 4",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["xre300"] = {
			["Name"] = "XRE 300",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["brasilia"] = {
			["Name"] = "Brasilia",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["clio"] = {
			["Name"] = "Clio",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["cb650r"] = {
			["Name"] = "CB650r",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["fiesta"] = {
			["Name"] = "Fiesta",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["ftoro"] = {
			["Name"] = "Fiat Toro",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["polo"] = {
			["Name"] = "Polo",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["stanier"] = {
			["Name"] = "Honda Civic",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["fox"] = {
			["Name"] = "Fox",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["hornet"] = {
			["Name"] = "Hornet",
			["Weight"] = 160,
			["Price"] = 1000000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["silvia"] = {
			["Name"] = "Silvia",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["omega"] = {
			["Name"] = "Omega",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["unoescada"] = {
			["Name"] = "Uno de Escada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["fusca"] = {
			["Name"] = "Fusca",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["santana2000"] = {
			["Name"] = "Santana 2000",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["voyageg7"] = {
			["Name"] = "Voyage G7",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["xj6vip"] = {
			["Name"] = "XJ6",
			["Weight"] = 160,
			["Price"] = 1000000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["bate"] = {
			["Name"] = "Bate-bate",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["bananao"] = {
			["Name"] = "Bananao",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Embarcações"
		},
		["bc"] = {
			["Name"] = "Bc",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Esportivos"
		},
		["cb500x"] = {
			["Name"] = "CB500X",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["cbb"] = {
			["Name"] = "CBB",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["cbrr"] = {
			["Name"] = "CBRR",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["celta"] = {
			["Name"] = "Celta",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["escortrs"] = {
			["Name"] = "Escortrs",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["hcbr17"] = {
			["Name"] = "CBR1000",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Motocicletas"
		},
		["hilux2016"] = {
			["Name"] = "Hilux 2016",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["hilux2016"] = {
			["Name"] = "Hilux 2016",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["jettagli"] = {
			["Name"] = "JettaGli",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["p1"] = {
			["Name"] = "P1",
			["Weight"] = 160,
			["Price"] = 100000000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Esportivos"
		},
		["paredao"] = {
			["Name"] = "Paredão",
			["Weight"] = 160,
			["Price"] = 1500000,
			["Mode"] = "Rental",
			["Gemstone"] = 10000000,
			["Class"] = "Caminhões"
		},
		["pm19"] = {
			["Name"] = "Porsche Macan",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["polestar1"] = {
			["Name"] = "PoleStar1",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Esportivos"
		},
		["r1"] = {
			["Name"] = "R1",
			["Weight"] = 160,
			["Price"] = 2500000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["r6"] = {
			["Name"] = "R6",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["r8ppi"] = {
			["Name"] = "AudiR8",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["r1200gs"] = {
			["Name"] = "GS1200",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["r1250"] = {
			["Name"] = "R1250",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["ram2500"] = {
			["Name"] = "RAM2500",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "SUVs"
		},
		["s10hc"] = {
			["Name"] = "S10",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "SUVs"
		},
		["s15"] = {
			["Name"] = "S15",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Esportivos"
		},
		["saveiro"] = {
			["Name"] = "Saveiro",
			["Weight"] = 160,
			["Price"] = 300000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "SUVs"
		},
		["sonata"] = {
			["Name"] = "Hyundai Sonata",
			["Weight"] = 160,
			["Price"] = 750000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["sr1"] = {
			["Name"] = "BMW SR1",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["teslaprior"] = {
			["Name"] = "Tesla Prior",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["corolla2017"] = {
			["Name"] = "Corolla 2017",
			["Weight"] = 160,
			["Price"] = 10000000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["tiger"] = {
			["Name"] = "Tiger",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["tiger1200"] = {
			["Name"] = "Tiger 1200",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["topcar911"] = {
			["Name"] = "Porsche 911",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["veneno"] = {
			["Name"] = "Lamborghini Huracan",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["vwgol"] = {
			["Name"] = "VWgol",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["xj6"] = {
			["Name"] = "XJ6",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["xt66"] = {
			["Name"] = "XT66",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["km1000rr"] = {
			["Name"] = "KM1000RR",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["xt660vip"] = {
			["Name"] = "XT660",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["xxxxx"] = {
			["Name"] = "Mercedes Classe X",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "SUVs"
		},
		["z1000"] = {
			["Name"] = "z1000",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["audirs6"] = {
			["Name"] = "AudiRS6",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["audirs7"] = {
			["Name"] = "AudiRS7",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["bmwg07"] = {
			["Name"] = "Bmwg07",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["civic"] = {
			["Name"] = "Civic",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["civicsi"] = {
			["Name"] = "CivicSI",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["ferrariitalia"] = {
			["Name"] = "Ferrari Italia",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["160chumbo"] = {
			["Name"] = "160 Chumbo",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["pcx"] = {
			["Name"] = "PCX",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["cb500fwheelie"] = {
			["Name"] = "CB500",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["pop110i"] = {
			["Name"] = "POP110i",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["panamera"] = {
			["Name"] = "Porsche Panamera",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["skyline"] = {
			["Name"] = "Skyline",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Esportivos"
		},
		["tenere1200"] = {
			["Name"] = "Tenere 1200",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Motocicletas"
		},
		["aventador"] = {
			["Name"] = "Lamborghini Aventador",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["bmwi8"] = {
			["Name"] = "BMWI8",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["bmwm1wb"] = {
			["Name"] = "bmwm1wb",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["bmwm4gts"] = {
			["Name"] = "bmwm4gts",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["civictyper"] = {
			["Name"] = "Civic Type R",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["escalade2021"] = {
			["Name"] = "Escalade 2021",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "SUVs"
		},
		["ferrari812"] = {
			["Name"] = "Ferrari812",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["ferrarif12"] = {
			["Name"] = "Ferrarif12",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["ferrarif40"] = {
			["Name"] = "Ferrarif40",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["jeepcherokee"] = {
			["Name"] = "Jeep Cherokee",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "SUVs"
		},
		["lancerevolution9"] = {
			["Name"] = "Lancer evolution 9",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Sedans"
		},
		["m8competition"] = {
			["Name"] = "BMW M8 COMPETITION",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["mazdarx7"] = {
			["Name"] = "mazdarx7",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Cupês"
		},
		["mclarensenna"] = {
			["Name"] = "McLaren Senna",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["mercedesamg63"] = {
			["Name"] = "G63",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["mercedesg65"] = {
			["Name"] = "MercedesG65",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["mercedesgt63"] = {
			["Name"] = "MercedesGt63",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["skyliner34"] = {
			["Name"] = "R34",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Esportivos"
		},
		["skyliner342"] = {
			["Name"] = "R342r",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Esportivos"
		},
		["toyotasupra"] = {
			["Name"] = "Supra",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["vwtouareg"] = {
			["Name"] = "Towareg",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Compactos"
		},

		-- Blindados Nova Moda
		["armoredgle"] = {
			["Name"] = "armoredgle",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["urusrs2"] = {
			["Name"] = "URUS BLINDADA",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000000,
			["Class"] = "Importados"
		},
		["Paulo_Cross"] = {
			["Name"] = "TCROSS BLindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000000,
			["Class"] = "Importados"
		},
		["Pauloduster"] = {
			["Name"] = "Duster Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000000,
			["Class"] = "Importados"
		},
		["PCcorolla"] = {
			["Name"] = "Corolla Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000000,
			["Class"] = "Importados"
		},
		["armoredjettagli"] = {
			["Name"] = "JettaGLI",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["armoredm3g80c"] = {
			["Name"] = "armoredm3g80c",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["armoredporschemacan"] = {
			["Name"] = "Porsche Macan Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["armoredrs5"] = {
			["Name"] = "RS5 Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		-- ["armoredvelar"] = {
		-- 	["Name"] = "Velar Blindada",
		-- 	["Weight"] = 160,
		-- 	["Price"] = 100000,
		-- 	["Mode"] = "Rental",
		-- 	["Gemstone"] = 100000,
		-- 	["Class"] = "Importados"
		-- },
		["armoredx6"] = {
			["Name"] = "X6 Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["armoredx7m60i"] = {
			["Name"] = "x7m60i Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["gcmcorolla20cn"] = {
			["Name"] = "Corolla Blindada",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["mastersbellb"] = {
			["Name"] = "mastersbellb",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},
		["mastersbellfb"] = {
			["Name"] = "mastersbellfb",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 100000,
			["Class"] = "Importados"
		},

		-- Carros Novos Brito
		["rocoto"] = {
			["Name"] = "Rocoto",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["polo2018"] = {
			["Name"] = "Polo 2018",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["pologti"] = {
			["Name"] = "Polo GTI",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["dubsta"] = {
			["Name"] = "Dubsta",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["venatusc"] = {
			["Name"] = "Lamborghini Urus Mansory",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000000,
			["Class"] = "Importados"
		},
		["xc90"] = {
			["Name"] = "XC90",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Importados"
		},
		["xg632019"] = {
			["Name"] = "Mercedes G63",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["felon"] = {
			["Name"] = "Felon",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Cupês"
		},
		["vwgti23"] = {
			["Name"] = "vwgti23",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["gtr24"] = {
			["Name"] = "GTR24",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Esportivos"
		},
		["surge"] = {
			["Name"] = "Surge",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Cupês"
		},
		["sportage"] = {
			["Name"] = "Sportage",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["jetta2008"] = {
			["Name"] = "Jetta 2008",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["jeepreneg"] = {
			["Name"] = "Jeep Renegade",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["habanero"] = {
			["Name"] = "Nivus",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["nivus"] = {
			["Name"] = "Nivus2",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["benze55"] = {
			["Name"] = "benze55",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Cupês"
		},
		["schlafer"] = {
			["Name"] = "schlafer",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Cupês"
		},
		["brabus"] = {
			["Name"] = "Brabus",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["blista"] = {
			["Name"] = "blista",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Compactos"
		},
		["bydseal2024"] = {
			["Name"] = "BYD",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["fortuner"] = {
			["Name"] = "SW4",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["premier"] = {
			["Name"] = "premier",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Cupês"
		},
		["accord20"] = {
			["Name"] = "accord20",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["w223b50"] = {
			["Name"] = "w223b50",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		["q6audi23"] = {
			["Name"] = "AudiQ6",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Importados"
		},
		["24crvhybrid"] = {
			["Name"] = "Crv 2024",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Importados"
		},
		["srt8"] = {
			["Name"] = "Jeep Compass",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "SUVs"
		},
		["elantrang"] = {
			["Name"] = "Elantra",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Sedans"
		},
		
	-- Commercials
		["benson"] = {
			["Name"] = "Benson",
			["Weight"] = 160,
			["Price"] = 100000,
			["Mode"] = "Rental",
			["Gemstone"] = 5000,
			["Class"] = "Caminhões"
		},
		["biff"] = {
			["Name"] = "Biff",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["cerberus"] = {
			["Name"] = "Cerberus",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["cerberus2"] = {
			["Name"] = "Cerberus 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["cerberus3"] = {
			["Name"] = "Cerberus 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["hauler"] = {
			["Name"] = "Hauler",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["hauler2"] = {
			["Name"] = "Hauler 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["mule"] = {
			["Name"] = "Mule",
			["Weight"] = 1000,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["mule2"] = {
			["Name"] = "Mule 2",
			["Weight"] = 1000,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["mule3"] = {
			["Name"] = "Mule 3",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["mule4"] = {
			["Name"] = "Mule 4",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["packer"] = {
			["Name"] = "Packer",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["phantom"] = {
			["Name"] = "Phantom",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["phantom2"] = {
			["Name"] = "Phantom 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["phantom3"] = {
			["Name"] = "Phantom 3",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["pounder"] = {
			["Name"] = "Pounder",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["pounder2"] = {
			["Name"] = "Pounder 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["stockade"] = {
			["Name"] = "Stockade",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["stockade3"] = {
			["Name"] = "Stockade 3",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
		["terbyte"] = {
			["Name"] = "Terbyte",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Caminhões"
		},
	
	-- Compacts
		["asbo"] = {
			["Name"] = "Asbo",
			["Weight"] = 20,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["blista"] = {
			["Name"] = "Blista",
			["Weight"] = 20,
			["Price"] = 40000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["brioso"] = {
			["Name"] = "Brioso",
			["Weight"] = 20,
			["Price"] = 30000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["club"] = {
			["Name"] = "Club",
			["Weight"] = 20,
			["Price"] = 65000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["dilettante"] = {
			["Name"] = "Dilettante",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["dilettante2"] = {
			["Name"] = "Dilettante 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["kanjo"] = {
			["Name"] = "Kanjo",
			["Weight"] = 30,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["issi2"] = {
			["Name"] = "Issi 2",
			["Weight"] = 25,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["issi3"] = {
			["Name"] = "Issi 3",
			["Weight"] = 35,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["issi4"] = {
			["Name"] = "Issi 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["issi5"] = {
			["Name"] = "Issi 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["issi6"] = {
			["Name"] = "Issi 6",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["panto"] = {
			["Name"] = "Panto",
			["Weight"] = 20,
			["Price"] = 15000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["prairie"] = {
			["Name"] = "Prairie",
			["Weight"] = 15,
			["Price"] = 15000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["rhapsody"] = {
			["Name"] = "Rhapsody",
			["Weight"] = 15,
			["Price"] = 10000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["brioso2"] = {
			["Name"] = "Brioso 2",
			["Weight"] = 20,
			["Price"] = 40000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["weevil"] = {
			["Name"] = "Weevil",
			["Weight"] = 35,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
	
	-- Coupes
		["cogcabrio"] = {
			["Name"] = "Cogcabrio",
			["Weight"] = 30,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["exemplar"] = {
			["Name"] = "Exemplar",
			["Weight"] = 20,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["f620"] = {
			["Name"] = "F620",
			["Weight"] = 30,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["felon"] = {
			["Name"] = "Felon",
			["Weight"] = 30,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["felon2"] = {
			["Name"] = "Felon 2",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["jackal"] = {
			["Name"] = "Jackal",
			["Weight"] = 30,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["oracle"] = {
			["Name"] = "Oracle",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["oracle2"] = {
			["Name"] = "Oracle 2",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["sentinel"] = {
			["Name"] = "Sentinel",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["sentinel2"] = {
			["Name"] = "Sentinel 2",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["windsor"] = {
			["Name"] = "Windsor",
			["Weight"] = 30,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["windsor2"] = {
			["Name"] = "Windsor 2",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["zion"] = {
			["Name"] = "Zion",
			["Weight"] = 30,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["zion2"] = {
			["Name"] = "Zion 2",
			["Weight"] = 35,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
		["previon"] = {
			["Name"] = "Previon",
			["Weight"] = 30,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Cupês"
		},
	
	-- Cycles
		["bmx"] = {
			["Name"] = "Bmx",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},	
		["cruiser"] = {
			["Name"] = "Cruiser",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},
		["fixter"] = {
			["Name"] = "Fixter",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},
		["scorcher"] = {
			["Name"] = "Scorcher",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},
		["tribike"] = {
			["Name"] = "Tribike",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},
		["tribike2"] = {
			["Name"] = "Tribike 2",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},
		["tribike3"] = {
			["Name"] = "Tribike 3",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Bicicletas"
		},
	
	-- Emergency
		["ambulance"] = {
			["Name"] = "Ambulance",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["fbi"] = {
			["Name"] = "Fbi",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["fbi2"] = {
			["Name"] = "Fbi 2",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["firetruk"] = {
			["Name"] = "Firetruk",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},	
		["lguard"] = {
			["Name"] = "Lguard",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["pbus"] = {
			["Name"] = "Pbus",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["police"] = {
			["Name"] = "Police",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["police2"] = {
			["Name"] = "Police 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["police3"] = {
			["Name"] = "Police 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["police4"] = {
			["Name"] = "Police 4",
			["Weight"] = 20,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["policeb"] = {
			["Name"] = "Harley FLH1200",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["polmav"] = {
			["Name"] = "Polmav",
			["Weight"] = 40,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["policeold1"] = {
			["Name"] = "Policeold 1",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["policeold2"] = {
			["Name"] = "Policeold 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["policet"] = {
			["Name"] = "Police T",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["pranger"] = {
			["Name"] = "Pranger",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["predator"] = {
			["Name"] = "Predator",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["riot"] = {
			["Name"] = "Riot",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["riot2"] = {
			["Name"] = "Riot 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["sheriff"] = {
			["Name"] = "Sheriff",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["sheriff2"] = {
			["Name"] = "Sheriff 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
	-- Helicopters
		["akula"] = {
			["Name"] = "Akula",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["samumav"] = {
			["Name"] = "Heli Samu",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["energyheli"] = {
			["Name"] = "Heli Samu 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["polmav"] = {
			["Name"] = "Heli Emergency",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["helibpmm"] = {
			["Name"] = "Helibpmm",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["annihilator"] = {
			["Name"] = "Annihilator",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["buzzard"] = {
			["Name"] = "Buzzard",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["buzzard2"] = {
			["Name"] = "Buzzard 2",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["cargobob"] = {
			["Name"] = "Cargobob",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["cargobob2"] = {
			["Name"] = "Cargobob 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["cargobob3"] = {
			["Name"] = "Cargobob 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["cargobob4"] = {
			["Name"] = "Cargobob 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["frogger"] = {
			["Name"] = "Frogger",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["frogger2"] = {
			["Name"] = "Frogger 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["havok"] = {
			["Name"] = "Havok",
			["Weight"] = 100,
			["Price"] = 262500,
			["Mode"] = "Work",
			["Gemstone"] = 7500,
			["Class"] = "Helicópteros"
		},
		["hunter"] = {
			["Name"] = "Hunter",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["maverick"] = {
			["Name"] = "Maverick",
			["Weight"] = 100,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["savage"] = {
			["Name"] = "Savage",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["seasparrow"] = {
			["Name"] = "Seasparrow",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["skylift"] = {
			["Name"] = "Skylift",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["supervolito"] = {
			["Name"] = "Supervolito",
			["Weight"] = 100,
			["Price"] = 437500,
			["Mode"] = "Work",
			["Gemstone"] = 12500,
			["Class"] = "Helicópteros"
		},
		["supervolito2"] = {
			["Name"] = "Supervolito 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["swift"] = {
			["Name"] = "Swift",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["swift2"] = {
			["Name"] = "Swift 2",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["valkyrie"] = {
			["Name"] = "Valkyrie",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["valkyrie2"] = {
			["Name"] = "Valkyrie 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["volatus"] = {
			["Name"] = "Volatus",
			["Weight"] = 100,
			["Price"] = 437500,
			["Mode"] = "Work",
			["Gemstone"] = 12500,
			["Class"] = "Helicópteros"
		},
		["annihilator2"] = {
			["Name"] = "Annihilator 2",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["seasparrow2"] = {
			["Name"] = "Seasparrow 2",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
		["seasparrow3"] = {
			["Name"] = "Seasparrow 3",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Helicópteros"
		},
	
	-- Industrial	
		["bulldozer"] = {
			["Name"] = "Bulldozer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["cutter"] = {
			["Name"] = "Cutter",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["dump"] = {
			["Name"] = "Dump",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["flatbed"] = {
			["Name"] = "Flatbed",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["guardian"] = {
			["Name"] = "Guardian",
			["Weight"] = 50,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["handler"] = {
			["Name"] = "Handler",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["mixer"] = {
			["Name"] = "Mixer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["mixer2"] = {
			["Name"] = "Mixer 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["rubble"] = {
			["Name"] = "Rubble",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["tiptruck"] = {
			["Name"] = "Tiptruck",
			["Weight"] = 80,
			["Price"] = 500,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
		["tiptruck2"] = {
			["Name"] = "Tiptruck 2",
			["Weight"] = 160,
			["Price"] = 5000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Industriais"
		},
	
	-- Military
		["apc"] = {
			["Name"] = "Apc",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["barracks"] = {
			["Name"] = "Barracks",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["barracks2"] = {
			["Name"] = "Barracks 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["barracks3"] = {
			["Name"] = "Barracks 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["barrage"] = {
			["Name"] = "Barrage",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["chernobog"] = {
			["Name"] = "Chernobog",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["crusader"] = {
			["Name"] = "Crusader",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["halftrack"] = {
			["Name"] = "Halftrack",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["khanjali"] = {
			["Name"] = "Khanjali",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["minitank"] = {
			["Name"] = "Minitank",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rhino"] = {
			["Name"] = "Rhino",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["scarab"] = {
			["Name"] = "Scarab",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["scarab2"] = {
			["Name"] = "Scarab 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["scarab3"] = {
			["Name"] = "Scarab 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["thruster"] = {
			["Name"] = "Thruster",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["trailersmall2"] = {
			["Name"] = "Trailersmall 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["vetir"] = {
			["Name"] = "Vetir",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
	
	-- Motorcycles
		["akuma"] = {
			["Name"] = "Akuma",
			["Weight"] = 20,
			["Price"] = 240000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["avarus"] = {
			["Name"] = "Avarus",
			["Weight"] = 20,
			["Price"] = 5000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["bagger"] = {
			["Name"] = "Bagger",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["bati"] = {
			["Name"] = "Bati",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["bati2"] = {
			["Name"] = "Bati 2",
			["Weight"] = 20,
			["Price"] = 240000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["bf400"] = {
			["Name"] = "Bf400",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["carbonrs"] = {
			["Name"] = "Carbon RS",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["chimera"] = {
			["Name"] = "Chimera",
			["Weight"] = 20,
			["Price"] = 130000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["cliffhanger"] = {
			["Name"] = "Cliffhanger",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["daemon"] = {
			["Name"] = "Daemon",
			["Weight"] = 20,
			["Price"] = 140000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["daemon2"] = {
			["Name"] = "Daemon 2",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["defiler"] = {
			["Name"] = "Defiler",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["deathbike"] = {
			["Name"] = "Deathbike",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["deathbike2"] = {
			["Name"] = "Deathbike 2",
			["Weight"] = 20,
			["Price"] = 65000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["deathbike3"] = {
			["Name"] = "Deathbike 3",
			["Weight"] = 20,
			["Price"] = 65000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["diablous"] = {
			["Name"] = "Diablous",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["diablous2"] = {
			["Name"] = "Diablous 2",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["double"] = {
			["Name"] = "Double",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["enduro"] = {
			["Name"] = "Enduro",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["esskey"] = {
			["Name"] = "Esskey",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["faggio"] = {
			["Name"] = "Faggio",
			["Weight"] = 10,
			["Price"] = 2000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["faggio2"] = {
			["Name"] = "Faggio 2",
			["Weight"] = 10,
			["Price"] = 2000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["faggio3"] = {
			["Name"] = "Faggio 3",
			["Weight"] = 10,
			["Price"] = 2000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["fcr"] = {
			["Name"] = "Fcr",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["fcr2"] = {
			["Name"] = "Fcr 2",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["gargoyle"] = {
			["Name"] = "Gargoyle",
			["Weight"] = 20,
			["Price"] = 230000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["hakuchou"] = {
			["Name"] = "Hakuchou",
			["Weight"] = 20,
			["Price"] = 240000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["hakuchou2"] = {
			["Name"] = "Hakuchou 2",
			["Weight"] = 20,
			["Price"] = 270000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["hexer"] = {
			["Name"] = "Hexer",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["innovation"] = {
			["Name"] = "Innovation",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["lectro"] = {
			["Name"] = "Lectro",
			["Weight"] = 20,
			["Price"] = 5000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["manchez"] = {
			["Name"] = "Manchez",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["manchez3"] = {
			["Name"] = "manchez3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["nemesis"] = {
			["Name"] = "Nemesis",
			["Weight"] = 20,
			["Price"] = 140000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["nightblade"] = {
			["Name"] = "Nightblade",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["oppressor"] = {
			["Name"] = "Oppressor",
			["Weight"] = 20,
			["Price"] = 130000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["oppressor2"] = {
			["Name"] = "Oppressor 2",
			["Weight"] = 20,
			["Price"] = 130000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["pcj"] = {
			["Name"] = "Pcj",
			["Weight"] = 20,
			["Price"] = 100000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["powersurge"] = {
			["Name"] = "powersurge",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["ratbike"] = {
			["Name"] = "Ratbike",
			["Weight"] = 20,
			["Price"] = 110000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["ruffian"] = {
			["Name"] = "Ruffian",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["rrocket"] = {
			["Name"] = "Rrocket",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["sanchez"] = {
			["Name"] = "Sanchez",
			["Weight"] = 15,
			["Price"] = 140000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["sanchez2"] = {
			["Name"] = "Sanchez 2",
			["Weight"] = 15,
			["Price"] = 150000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["sanctus"] = {
			["Name"] = "Sanctus",
			["Weight"] = 20,
			["Price"] = 190000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["shotaro"] = {
			["Name"] = "Shotaro",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["sovereign"] = {
			["Name"] = "Sovereign",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["stryder"] = {
			["Name"] = "Stryder",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["thrust"] = {
			["Name"] = "Thrust",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["vader"] = {
			["Name"] = "Vader",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["vindicator"] = {
			["Name"] = "Vindicator",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["vortex"] = {
			["Name"] = "Vortex",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["wolfsbane"] = {
			["Name"] = "Wolfsbane",
			["Weight"] = 20,
			["Price"] = 100000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["zombiea"] = {
			["Name"] = "Zombie A",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["zombieb"] = {
			["Name"] = "Zombie B",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Bikes",
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
		["manchez2"] = {
			["Name"] = "Manchez 2",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Motocicletas"
		},
	
	-- Muscle
		["blade"] = {
			["Name"] = "Blade",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["broadway"] = {
			["Name"] = "broadway",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["buccaneer"] = {
			["Name"] = "Buccaneer",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["buccaneer2"] = {
			["Name"] = "Buccaneer 2",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["chino"] = {
			["Name"] = "Chino",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["chino2"] = {
			["Name"] = "Chino 2",
			["Weight"] = 45,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["clique"] = {
			["Name"] = "Clique",
			["Weight"] = 35,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["coquette3"] = {
			["Name"] = "Coquette 3",
			["Weight"] = 40,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["deviant"] = {
			["Name"] = "Deviant",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dominator"] = {
			["Name"] = "Dominator",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dominator2"] = {
			["Name"] = "Dominator 2",
			["Weight"] = 50,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dominator3"] = {
			["Name"] = "Dominator 3",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},	
		["dominator4"] = {
			["Name"] = "Dominator 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dominator5"] = {
			["Name"] = "Dominator 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dominator6"] = {
			["Name"] = "Dominator 6",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dukes"] = {
			["Name"] = "Dukes",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dukes2"] = {
			["Name"] = "Dukes 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dukes3"] = {
			["Name"] = "Dukes 3",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["faction"] = {
			["Name"] = "Faction",
			["Weight"] = 50,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["faction2"] = {
			["Name"] = "Faction 2",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["faction3"] = {
			["Name"] = "Faction 3",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["ellie"] = {
			["Name"] = "Ellie",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["eudora"] = {
			["Name"] = "eudora",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["gauntlet"] = {
			["Name"] = "Gauntlet",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["gauntlet2"] = {
			["Name"] = "Gauntlet 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["gauntlet3"] = {
			["Name"] = "Gauntlet 3",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["gauntlet4"] = {
			["Name"] = "Gauntlet 4",
			["Weight"] = 40,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["gauntlet5"] = {
			["Name"] = "Gauntlet 5",
			["Weight"] = 40,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["hermes"] = {
			["Name"] = "Hermes",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["hotknife"] = {
			["Name"] = "Hotknife",
			["Weight"] = 30,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["hustler"] = {
			["Name"] = "Hustler",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["impaler"] = {
			["Name"] = "Impaler",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["impaler2"] = {
			["Name"] = "Impaler 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["impaler3"] = {
			["Name"] = "Impaler 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["impaler4"] = {
			["Name"] = "Impaler 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["imperator"] = {
			["Name"] = "Imperator",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["imperator2"] = {
			["Name"] = "Imperator 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["imperator3"] = {
			["Name"] = "Imperator 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["lurcher"] = {
			["Name"] = "Lurcher",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["moonbeam"] = {
			["Name"] = "Moonbeam",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["moonbeam2"] = {
			["Name"] = "Moonbeam 2",
			["Weight"] = 40,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["nightshade"] = {
			["Name"] = "Nightshade",
			["Weight"] = 30,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["peyote2"] = {
			["Name"] = "Peyote 2",
			["Weight"] = 45,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["phoenix"] = {
			["Name"] = "Phoenix",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["picador"] = {
			["Name"] = "Picador",
			["Weight"] = 60,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["ratloader"] = {
			["Name"] = "Ratloader",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["ratloader2"] = {
			["Name"] = "Ratloader 2",
			["Weight"] = 40,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["ruiner"] = {
			["Name"] = "Ruiner",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["ruiner2"] = {
			["Name"] = "Ruiner 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["ruiner3"] = {
			["Name"] = "Ruiner 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["sabregt"] = {
			["Name"] = "Sabre GT",
			["Weight"] = 45,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["sabregt2"] = {
			["Name"] = "Sabregt 2",
			["Weight"] = 50,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["slamvan"] = {
			["Name"] = "Slamvan",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["slamvan2"] = {
			["Name"] = "Slamvan 2",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["slamvan3"] = {
			["Name"] = "Slamvan 3",
			["Weight"] = 40,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["slamvan4"] = {
			["Name"] = "Slamvan 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["slamvan5"] = {
			["Name"] = "Slamvan 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["slamvan6"] = {
			["Name"] = "Slamvan 6",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["stalion"] = {
			["Name"] = "Stalion",
			["Weight"] = 30,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["stalion2"] = {
			["Name"] = "Stalion 2",
			["Weight"] = 30,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["tahoma"] = {
			["Name"] = "tahoma",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["tampa"] = {
			["Name"] = "Tampa",
			["Weight"] = 40,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["tampa3"] = {
			["Name"] = "Tampa 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["tulip"] = {
			["Name"] = "Tulip",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["tulip2"] = {
			["Name"] = "tulip2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["vamos"] = {
			["Name"] = "Vamos",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["vigero"] = {
			["Name"] = "Vigero",
			["Weight"] = 30,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["virgo"] = {
			["Name"] = "Virgo",
			["Weight"] = 25,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["virgo2"] = {
			["Name"] = "Virgo 2",
			["Weight"] = 50,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["virgo3"] = {
			["Name"] = "Virgo 3",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["voodoo"] = {
			["Name"] = "Voodoo",
			["Weight"] = 45,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["voodoo2"] = {
			["Name"] = "Voodoo 2",
			["Weight"] = 25,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["yosemite"] = {
			["Name"] = "Yosemite",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["yosemite2"] = {
			["Name"] = "Yosemite 2",
			["Weight"] = 50,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["yosemite3"] = {
			["Name"] = "Yosemite 3",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["dominator7"] = {
			["Name"] = "Dominator 7",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
	
	-- Off-Road
		["bfinjection"] = {
			["Name"] = "Bfinjection",
			["Weight"] = 20,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["bifta"] = {
			["Name"] = "Bifta",
			["Weight"] = 20,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["blazer"] = {
			["Name"] = "Blazer",
			["Weight"] = 10,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["blazer2"] = {
			["Name"] = "Blazer 2",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["blazer3"] = {
			["Name"] = "Blazer 3",
			["Weight"] = 10,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["blazer4"] = {
			["Name"] = "Blazer 4",
			["Weight"] = 10,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["blazer5"] = {
			["Name"] = "Blazer 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["bodhi2"] = {
			["Name"] = "Bodhi 2",
			["Weight"] = 30,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["brawler"] = {
			["Name"] = "Brawler",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["bruiser"] = {
			["Name"] = "Bruiser",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["bruiser2"] = {
			["Name"] = "Bruiser 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["bruiser3"] = {
			["Name"] = "Bruiser 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["brutus"] = {
			["Name"] = "Brutus",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["brutus2"] = {
			["Name"] = "Brutus 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["brutus3"] = {
			["Name"] = "Brutus 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["caracara"] = {
			["Name"] = "Caracara",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["caracara2"] = {
			["Name"] = "Caracara 2",
			["Weight"] = 50,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dloader"] = {
			["Name"] = "Dloader",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dubsta3"] = {
			["Name"] = "Dubsta 3",
			["Weight"] = 55,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dune"] = {
			["Name"] = "Dune",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dune2"] = {
			["Name"] = "Dune 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dune3"] = {
			["Name"] = "Dune 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dune4"] = {
			["Name"] = "Dune 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["dune5"] = {
			["Name"] = "Dune 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["everon"] = {
			["Name"] = "Everon",
			["Weight"] = 50,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["freecrawler"] = {
			["Name"] = "Freecrawler",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["hellion"] = {
			["Name"] = "Hellion",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["insurgent"] = {
			["Name"] = "Insurgent",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["insurgent2"] = {
			["Name"] = "Insurgent 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["insurgent3"] = {
			["Name"] = "Insurgent 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["kalahari"] = {
			["Name"] = "Kalahari",
			["Weight"] = 30,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["kamacho"] = {
			["Name"] = "Kamacho",
			["Weight"] = 50,
			["Price"] = 300000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["marshall"] = {
			["Name"] = "Marshall",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["mesa3"] = {
			["Name"] = "Mesa 3",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["monster"] = {
			["Name"] = "Monster",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["monster3"] = {
			["Name"] = "Monster 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["monster4"] = {
			["Name"] = "Monster 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["monster5"] = {
			["Name"] = "Monster 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["menacer"] = {
			["Name"] = "Menacer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["outlaw"] = {
			["Name"] = "Outlaw",
			["Weight"] = 20,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["nightshark"] = {
			["Name"] = "Nightshark",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},	
		["rancherxl"] = {
			["Name"] = "Rancher XL",
			["Weight"] = 40,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["rancherxl2"] = {
			["Name"] = "Rancher XL2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["rebel"] = {
			["Name"] = "Rebel",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["rebel2"] = {
			["Name"] = "Rebel 2",
			["Weight"] = 45,
			["Price"] = 85000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["rcbandito"] = {
			["Name"] = "RC Bandito",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["riata"] = {
			["Name"] = "Riata",
			["Weight"] = 45,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["sandking"] = {
			["Name"] = "Sandking",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["sandking2"] = {
			["Name"] = "Sandking 2",
			["Weight"] = 55,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["technical"] = {
			["Name"] = "Technical",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["technical2"] = {
			["Name"] = "Technical 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["technical3"] = {
			["Name"] = "Technical 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["trophytruck"] = {
			["Name"] = "Trophytruck",
			["Weight"] = 20,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["trophytruck2"] = {
			["Name"] = "Trophytruck 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["vagrant"] = {
			["Name"] = "Vagrant",
			["Weight"] = 30,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["zhaba"] = {
			["Name"] = "Zhaba",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["verus"] = {
			["Name"] = "Verus",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["winky"] = {
			["Name"] = "Winky",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
	
	-- Open Wheel
		["formula"] = {
			["Name"] = "Formula",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Formula 1"
		},
		["formula2"] = {
			["Name"] = "Formula 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Formula 1"
		},
		["openwheel1"] = {
			["Name"] = "Openwheel 1",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Formula 1"
		},
		["openwheel2"] = {
			["Name"] = "Openwheel 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Formula 1"
		},
	
	-- Planes
		["alphaz1"] = {
			["Name"] = "Alphaz 1",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["avenger"] = {
			["Name"] = "Avenger",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["avenger2"] = {
			["Name"] = "Avenger 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["besra"] = {
			["Name"] = "Besra",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["blimp"] = {
			["Name"] = "Blimp",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["blimp2"] = {
			["Name"] = "Blimp 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["blimp3"] = {
			["Name"] = "Blimp 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["bombushka"] = {
			["Name"] = "Bombushka",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["cargoplane"] = {
			["Name"] = "Cargoplane",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["cargoplane2"] = {
			["Name"] = "cargoplane2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["cuban800"] = {
			["Name"] = "Cuban800",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["dodo"] = {
			["Name"] = "Dodo",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["duster"] = {
			["Name"] = "Duster",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["howard"] = {
			["Name"] = "Howard",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["hydra"] = {
			["Name"] = "Hydra",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["jet"] = {
			["Name"] = "Jet",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["lazer"] = {
			["Name"] = "Lazer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["luxor"] = {
			["Name"] = "Luxor",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["luxor2"] = {
			["Name"] = "Luxor 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["mammatus"] = {
			["Name"] = "Mammatus",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["microlight"] = {
			["Name"] = "Microlight",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["miljet"] = {
			["Name"] = "Miljet",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["mogul"] = {
			["Name"] = "Mogul",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["molotok"] = {
			["Name"] = "Molotok",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["nimbus"] = {
			["Name"] = "Nimbus",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["nokota"] = {
			["Name"] = "Nokota",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["pyro"] = {
			["Name"] = "Pyro",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["rogue"] = {
			["Name"] = "Rogue",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["seabreeze"] = {
			["Name"] = "Seabreeze",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["shamal"] = {
			["Name"] = "Shamal",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["starling"] = {
			["Name"] = "Starling",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["strikeforce"] = {
			["Name"] = "Strikeforce",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["stunt"] = {
			["Name"] = "Stunt",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["titan"] = {
			["Name"] = "Titan",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["tula"] = {
			["Name"] = "Tula",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["velum"] = {
			["Name"] = "Velum",
			["Weight"] = 0,
			["Price"] = 2000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["velum2"] = {
			["Name"] = "Velum 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["vestra"] = {
			["Name"] = "Vestra",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["volatol"] = {
			["Name"] = "Volatol",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
		["alkonost"] = {
			["Name"] = "Alkonost",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Aviões"
		},
	
	-- SUVs
		["baller"] = {
			["Name"] = "Baller",
			["Weight"] = 50,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["baller2"] = {
			["Name"] = "Baller 2",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["baller3"] = {
			["Name"] = "Baller 3",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["baller4"] = {
			["Name"] = "Baller 4",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["baller5"] = {
			["Name"] = "Baller 5",
			["Weight"] = 50,
			["Price"] = 400000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["baller6"] = {
			["Name"] = "Baller 6",
			["Weight"] = 50,
			["Price"] = 410000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["bjxl"] = {
			["Name"] = "Bjxl",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["cavalcade"] = {
			["Name"] = "Cavalcade",
			["Weight"] = 30,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["cavalcade2"] = {
			["Name"] = "Cavalcade 2",
			["Weight"] = 45,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["contender"] = {
			["Name"] = "Contender",
			["Weight"] = 40,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["dubsta"] = {
			["Name"] = "Dubsta",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["dubsta2"] = {
			["Name"] = "Dubsta 2",
			["Weight"] = 55,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["fq2"] = {
			["Name"] = "Fq2",
			["Weight"] = 40,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["granger"] = {
			["Name"] = "Granger",
			["Weight"] = 65,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["gresley"] = {
			["Name"] = "Gresley",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["habanero"] = {
			["Name"] = "Habanero",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["huntley"] = {
			["Name"] = "Huntley",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["issi8"] = {
			["Name"] = "issi8",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["landstalker"] = {
			["Name"] = "Landstalker",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["landstalker2"] = {
			["Name"] = "Landstalker 2",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["mesa"] = {
			["Name"] = "Mesa",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["mesa2"] = {
			["Name"] = "Mesa 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["novak"] = {
			["Name"] = "Novak",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["patriot"] = {
			["Name"] = "Patriot",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["patriot2"] = {
			["Name"] = "Patriot 2",
			["Weight"] = 50,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["radi"] = {
			["Name"] = "Radi",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["rebla"] = {
			["Name"] = "Rebla",
			["Weight"] = 40,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["rocoto"] = {
			["Name"] = "Rocoto",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["seminole"] = {
			["Name"] = "Seminole",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["seminole2"] = {
			["Name"] = "Seminole 2",
			["Weight"] = 45,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["serrano"] = {
			["Name"] = "Serrano",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["toros"] = {
			["Name"] = "Toros",
			["Weight"] = 50,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["xls"] = {
			["Name"] = "Xls",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["xls2"] = {
			["Name"] = "Xls 2",
			["Weight"] = 50,
			["Price"] = 410000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["squaddie"] = {
			["Name"] = "Squaddie",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
	
	-- Sedans
		["asea"] = {
			["Name"] = "Asea",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["asea2"] = {
			["Name"] = "Asea 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["asterope"] = {
			["Name"] = "Asterope",
			["Weight"] = 20,
			["Price"] = 30000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["cog55"] = {
			["Name"] = "Cog55",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["cog552"] = {
			["Name"] = "Cog55 2",
			["Weight"] = 50,
			["Price"] = 410000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["cognoscenti"] = {
			["Name"] = "Cognoscenti",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["cognoscenti2"] = {
			["Name"] = "Cognoscenti 2",
			["Weight"] = 50,
			["Price"] = 400000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["emperor"] = {
			["Name"] = "Emperor",
			["Weight"] = 25,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["emperor2"] = {
			["Name"] = "Emperor 2",
			["Weight"] = 20,
			["Price"] = 2000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["emperor3"] = {
			["Name"] = "Emperor 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["fugitive"] = {
			["Name"] = "Fugitive",
			["Weight"] = 60,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["glendale"] = {
			["Name"] = "Glendale",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["glendale2"] = {
			["Name"] = "Glendale 2",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["ingot"] = {
			["Name"] = "Ingot",
			["Weight"] = 40,
			["Price"] = 15000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["intruder"] = {
			["Name"] = "Intruder",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["limo2"] = {
			["Name"] = "Limo 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["premier"] = {
			["Name"] = "Premier",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["primo"] = {
			["Name"] = "Primo",
			["Weight"] = 30,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["primo2"] = {
			["Name"] = "Primo 2",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["regina"] = {
			["Name"] = "Regina",
			["Weight"] = 40,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["romero"] = {
			["Name"] = "Romero",
			["Weight"] = 25,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["stafford"] = {
			["Name"] = "Stafford",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["stanier"] = {
			["Name"] = "Stanier",
			["Weight"] = 25,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["stratum"] = {
			["Name"] = "Stratum",
			["Weight"] = 40,
			["Price"] = 40000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["stretch"] = {
			["Name"] = "Stretch",
			["Weight"] = 40,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["superd"] = {
			["Name"] = "Superd",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["surge"] = {
			["Name"] = "Surge",
			["Weight"] = 40,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["tailgater"] = {
			["Name"] = "Tailgater",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["warrener"] = {
			["Name"] = "Warrener",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["washington"] = {
			["Name"] = "Washington",
			["Weight"] = 40,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["tailgater2"] = {
			["Name"] = "Tailgater 2",
			["Weight"] = 40,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Sedans"
		},
		["airbus"] = {
			["Name"] = "Airbus",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["brickade"] = {
			["Name"] = "Brickade",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["bus"] = {
			["Name"] = "Bus",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["coach"] = {
			["Name"] = "Coach",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["pbus2"] = {
			["Name"] = "Pbus 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["rallytruck"] = {
			["Name"] = "Rally Truck",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["rentalbus"] = {
			["Name"] = "Rental Bus",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["taxi"] = {
			["Name"] = "Taxi",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["tourbus"] = {
			["Name"] = "Tour Bus",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["trash"] = {
			["Name"] = "Trash",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["trash2"] = {
			["Name"] = "Trash 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
		["wastelander"] = {
			["Name"] = "Wastelander",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Serviços"
		},
	
	-- Sports
		["alpha"] = {
			["Name"] = "Alpha",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["banshee"] = {
			["Name"] = "Banshee",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["bestiagts"] = {
			["Name"] = "Bestia GTS",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["blista2"] = {
			["Name"] = "Blista 2",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["blista3"] = {
			["Name"] = "Blista 3",
			["Weight"] = 30,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["buffalo"] = {
			["Name"] = "Buffalo",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["buffalo2"] = {
			["Name"] = "Buffalo 2",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["buffalo3"] = {
			["Name"] = "Buffalo 3",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["carbonizzare"] = {
			["Name"] = "Carbonizzare",
			["Weight"] = 50,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["comet2"] = {
			["Name"] = "Comet 2",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["comet3"] = {
			["Name"] = "Comet 3",
			["Weight"] = 40,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["comet4"] = {
			["Name"] = "Comet 4",
			["Weight"] = 40,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["comet5"] = {
			["Name"] = "Comet 5",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["coquette"] = {
			["Name"] = "Coquette",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["coquette4"] = {
			["Name"] = "Coquette 4",
			["Weight"] = 30,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["drafter"] = {
			["Name"] = "Drafter",
			["Weight"] = 40,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["deveste"] = {
			["Name"] = "Deveste",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["elegy"] = {
			["Name"] = "Elegy",
			["Weight"] = 50,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["elegy2"] = {
			["Name"] = "Elegy 2",
			["Weight"] = 30,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["everon2"] = {
			["Name"] = "Everon2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["feltzer2"] = {
			["Name"] = "Feltzer 2",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["flashgt"] = {
			["Name"] = "Flash GT",
			["Weight"] = 40,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["furoregt"] = {
			["Name"] = "Furore GT",
			["Weight"] = 35,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["fusilade"] = {
			["Name"] = "Fusilade",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["futo"] = {
			["Name"] = "Futo",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["gb200"] = {
			["Name"] = "Gb200",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["hotring"] = {
			["Name"] = "Hotring",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["komoda"] = {
			["Name"] = "Komoda",
			["Weight"] = 50,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["imorgon"] = {
			["Name"] = "Imorgon",
			["Weight"] = 40,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["issi7"] = {
			["Name"] = "Issi 7",
			["Weight"] = 40,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["italigto"] = {
			["Name"] = "Itali GTO",
			["Weight"] = 30,
			["Price"] = 220000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jugular"] = {
			["Name"] = "Jugular",
			["Weight"] = 30,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jester"] = {
			["Name"] = "Jester",
			["Weight"] = 30,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jester2"] = {
			["Name"] = "Jester 2",
			["Weight"] = 30,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jester3"] = {
			["Name"] = "Jester 3",
			["Weight"] = 30,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["khamelion"] = {
			["Name"] = "Khamelion",
			["Weight"] = 30,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["kuruma"] = {
			["Name"] = "Kuruma",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["kuruma2"] = {
			["Name"] = "Kuruma 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["locust"] = {
			["Name"] = "Locust",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["lynx"] = {
			["Name"] = "Lynx",
			["Weight"] = 35,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["massacro"] = {
			["Name"] = "Massacro",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["massacro2"] = {
			["Name"] = "Massacro 2",
			["Weight"] = 50,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["neo"] = {
			["Name"] = "Neo",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["neon"] = {
			["Name"] = "Neon",
			["Weight"] = 30,
			["Price"] = 230000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["ninef"] = {
			["Name"] = "Ninef",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["ninef2"] = {
			["Name"] = "Ninef 2",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["omnis"] = {
			["Name"] = "Omnis",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["paragon"] = {
			["Name"] = "Paragon",
			["Weight"] = 30,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["paragon2"] = {
			["Name"] = "Paragon 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["pariah"] = {
			["Name"] = "Pariah",
			["Weight"] = 30,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["panthere"] = {
			["Name"] = "panthere",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["penumbra"] = {
			["Name"] = "Penumbra",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["penumbra2"] = {
			["Name"] = "Penumbra 2",
			["Weight"] = 30,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["r300"] = {
			["Name"] = "r300",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["raiden"] = {
			["Name"] = "Raiden",
			["Weight"] = 40,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["rapidgt"] = {
			["Name"] = "Rapid GT",
			["Weight"] = 20,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["rapidgt2"] = {
			["Name"] = "Rapidgt GT2",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["raptor"] = {
			["Name"] = "Raptor",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["revolter"] = {
			["Name"] = "Revolter",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["ruston"] = {
			["Name"] = "Ruston",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schafter2"] = {
			["Name"] = "Schafter 2",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schafter3"] = {
			["Name"] = "Schafter 3",
			["Weight"] = 50,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schafter4"] = {
			["Name"] = "Schafter 4",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schafter5"] = {
			["Name"] = "Schafter 5",
			["Weight"] = 50,
			["Price"] = 400000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schafter6"] = {
			["Name"] = "Schafter 6",
			["Weight"] = 50,
			["Price"] = 320000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schlagen"] = {
			["Name"] = "Schlagen",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["schwarzer"] = {
			["Name"] = "Schwarzer",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["sentinel3"] = {
			["Name"] = "Sentinel 3",
			["Weight"] = 30,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["seven70"] = {
			["Name"] = "Seven 70",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["specter"] = {
			["Name"] = "Specter",
			["Weight"] = 20,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["specter2"] = {
			["Name"] = "Specter 2",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["streiter"] = {
			["Name"] = "Streiter",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["sugoi"] = {
			["Name"] = "Sugoi",
			["Weight"] = 30,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["sultan"] = {
			["Name"] = "Sultan",
			["Weight"] = 30,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["sultan2"] = {
			["Name"] = "Sultan 2",
			["Weight"] = 30,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["surano"] = {
			["Name"] = "Surano",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tampa2"] = {
			["Name"] = "Tampa 2",
			["Weight"] = 35,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tropos"] = {
			["Name"] = "Tropos",
			["Weight"] = 35,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["verlierer2"] = {
			["Name"] = "Verlierer 2",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["vstr"] = {
			["Name"] = "Vstr",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["zr380"] = {
			["Name"] = "Zr380",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["zr3802"] = {
			["Name"] = "Zr380 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["zr3803"] = {
			["Name"] = "Zr380 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["italirsx"] = {
			["Name"] = "Itali RSX",
			["Weight"] = 20,
			["Price"] = 280000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["veto"] = {
			["Name"] = "Veto",
			["Weight"] = 0,
			["Price"] = 20000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["veto2"] = {
			["Name"] = "Veto 2",
			["Weight"] = 0,
			["Price"] = 20000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["zr350"] = {
			["Name"] = "ZR 350",
			["Weight"] = 20,
			["Price"] = 160000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["calico"] = {
			["Name"] = "Calico",
			["Weight"] = 20,
			["Price"] = 240000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["futo2"] = {
			["Name"] = "Futo 2",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["euros"] = {
			["Name"] = "Euros",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jester4"] = {
			["Name"] = "Jester 4",
			["Weight"] = 30,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["remus"] = {
			["Name"] = "Remus",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["comet6"] = {
			["Name"] = "Comet 6",
			["Weight"] = 30,
			["Price"] = 190000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["growler"] = {
			["Name"] = "Growler",
			["Weight"] = 30,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["vectre"] = {
			["Name"] = "Vectre",
			["Weight"] = 40,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["cypher"] = {
			["Name"] = "Cypher",
			["Weight"] = 20,
			["Price"] = 260000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["sultan3"] = {
			["Name"] = "Sultan 3",
			["Weight"] = 30,
			["Price"] = 250000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["rt3000"] = {
			["Name"] = "RT 3000",
			["Weight"] = 20,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["ardent"] = {
			["Name"] = "Ardent",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["btype"] = {
			["Name"] = "Btype",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["btype2"] = {
			["Name"] = "Btype 2",
			["Weight"] = 30,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["btype3"] = {
			["Name"] = "Btype 3",
			["Weight"] = 50,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["casco"] = {
			["Name"] = "Casco",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["cheetah2"] = {
			["Name"] = "Cheetah 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["coquette2"] = {
			["Name"] = "Coquette 2",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["deluxo"] = {
			["Name"] = "Deluxo",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["dynasty"] = {
			["Name"] = "Dynasty",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["fagaloa"] = {
			["Name"] = "Fagaloa",
			["Weight"] = 50,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["feltzer3"] = {
			["Name"] = "Feltzer 3",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["gt500"] = {
			["Name"] = "GT 500",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["infernus2"] = {
			["Name"] = "Infernus 2",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jb700"] = {
			["Name"] = "JB 700",
			["Weight"] = 30,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["jb7002"] = {
			["Name"] = "JB 7002",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["mamba"] = {
			["Name"] = "Mamba",
			["Weight"] = 50,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["manana"] = {
			["Name"] = "Manana",
			["Weight"] = 35,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["manana2"] = {
			["Name"] = "Manana 2",
			["Weight"] = 35,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["michelli"] = {
			["Name"] = "Michelli",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["monroe"] = {
			["Name"] = "Monroe",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["nebula"] = {
			["Name"] = "Nebula",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["peyote"] = {
			["Name"] = "Peyote",
			["Weight"] = 35,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["peyote3"] = {
			["Name"] = "Peyote 3",
			["Weight"] = 45,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["pigalle"] = {
			["Name"] = "Pigalle",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["rapidgt3"] = {
			["Name"] = "Rapid GT3",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["retinue"] = {
			["Name"] = "Retinue",
			["Weight"] = 40,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["retinue2"] = {
			["Name"] = "Retinue 2",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["savestra"] = {
			["Name"] = "Savestra",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["stinger"] = {
			["Name"] = "Stinger",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["stingergt"] = {
			["Name"] = "Stinger GT",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["stromberg"] = {
			["Name"] = "Stromberg",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["swinger"] = {
			["Name"] = "Swinger",
			["Weight"] = 50,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["torero"] = {
			["Name"] = "Torero",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tornado"] = {
			["Name"] = "Tornado",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tornado2"] = {
			["Name"] = "Tornado 2",
			["Weight"] = 45,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tornado3"] = {
			["Name"] = "Tornado 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tornado4"] = {
			["Name"] = "Tornado 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tornado5"] = {
			["Name"] = "Tornado 5",
			["Weight"] = 50,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tornado6"] = {
			["Name"] = "Tornado 6",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["turismo2"] = {
			["Name"] = "Turismo 2",
			["Weight"] = 30,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["viseris"] = {
			["Name"] = "Viseris",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["z190"] = {
			["Name"] = "Z190",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["ztype"] = {
			["Name"] = "Ztype",
			["Weight"] = 50,
			["Price"] = 250000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["zion3"] = {
			["Name"] = "Zion 3",
			["Weight"] = 40,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["cheburek"] = {
			["Name"] = "Cheburek",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["toreador"] = {
			["Name"] = "Toreador",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
	
	-- Super
		["adder"] = {
			["Name"] = "Adder",
			["Weight"] = 20,
			["Price"] = 190000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["autarch"] = {
			["Name"] = "Autarch",
			["Weight"] = 20,
			["Price"] = 240000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["banshee2"] = {
			["Name"] = "Banshee 2",
			["Weight"] = 20,
			["Price"] = 190000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["bullet"] = {
			["Name"] = "Bullet",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["cheetah"] = {
			["Name"] = "Cheetah",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["cyclone"] = {
			["Name"] = "Cyclone",
			["Weight"] = 20,
			["Price"] = 300000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["entity2"] = {
			["Name"] = "Entity 2",
			["Weight"] = 30,
			["Price"] = 220000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["entity3"] = {
			["Name"] = "entity3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["entityxf"] = {
			["Name"] = "Entity XF",
			["Weight"] = 20,
			["Price"] = 250000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["emerus"] = {
			["Name"] = "Emerus",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["fmj"] = {
			["Name"] = "Fmj",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["furia"] = {
			["Name"] = "Furia",
			["Weight"] = 20,
			["Price"] = 300000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["gp1"] = {
			["Name"] = "Gp1",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["infernus"] = {
			["Name"] = "Infernus",
			["Weight"] = 20,
			["Price"] = 130000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["italigtb"] = {
			["Name"] = "Italigtb",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["italigtb2"] = {
			["Name"] = "Italigtb 2",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["krieger"] = {
			["Name"] = "Krieger",
			["Weight"] = 20,
			["Price"] = 250000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["le7b"] = {
			["Name"] = "Le7b",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["nero"] = {
			["Name"] = "Nero",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["nero2"] = {
			["Name"] = "Nero 2",
			["Weight"] = 20,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["osiris"] = {
			["Name"] = "Osiris",
			["Weight"] = 20,
			["Price"] = 230000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["penetrator"] = {
			["Name"] = "Penetrator",
			["Weight"] = 30,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["pfister811"] = {
			["Name"] = "Pfister 811",
			["Weight"] = 20,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["prototipo"] = {
			["Name"] = "Prototipo",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["reaper"] = {
			["Name"] = "Reaper",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["s80"] = {
			["Name"] = "S80",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["sc1"] = {
			["Name"] = "Sc1",
			["Weight"] = 40,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["scramjet"] = {
			["Name"] = "Scramjet",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["sheava"] = {
			["Name"] = "Sheava",
			["Weight"] = 30,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["sultanrs"] = {
			["Name"] = "Sultan RS",
			["Weight"] = 30,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["t20"] = {
			["Name"] = "T20",
			["Weight"] = 20,
			["Price"] = 300000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["taipan"] = {
			["Name"] = "Taipan",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["tempesta"] = {
			["Name"] = "Tempesta",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["tezeract"] = {
			["Name"] = "Tezeract",
			["Weight"] = 20,
			["Price"] = 300000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["thrax"] = {
			["Name"] = "Thrax",
			["Weight"] = 50,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["tigon"] = {
			["Name"] = "Tigon",
			["Weight"] = 30,
			["Price"] = 220000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["turismor"] = {
			["Name"] = "Turismo R",
			["Weight"] = 20,
			["Price"] = 190000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["tyrant"] = {
			["Name"] = "Tyrant",
			["Weight"] = 20,
			["Price"] = 210000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["tyrus"] = {
			["Name"] = "Tyrus",
			["Weight"] = 20,
			["Price"] = 220000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["vacca"] = {
			["Name"] = "Vacca",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["vagner"] = {
			["Name"] = "Vagner",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["vigilante"] = {
			["Name"] = "Vigilante",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["virtue"] = {
			["Name"] = "virtue",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["visione"] = {
			["Name"] = "Visione",
			["Weight"] = 20,
			["Price"] = 230000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["voltic"] = {
			["Name"] = "Voltic",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["voltic2"] = {
			["Name"] = "Voltic 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["xa21"] = {
			["Name"] = "Xa21",
			["Weight"] = 20,
			["Price"] = 260000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["zentorno"] = {
			["Name"] = "Zentorno",
			["Weight"] = 20,
			["Price"] = 230000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["zorrusso"] = {
			["Name"] = "Zorrusso",
			["Weight"] = 20,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
	
	-- Trailer
		["armytanker"] = {
			["Name"] = "Armytanker",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["armytrailer"] = {
			["Name"] = "Armytrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["armytrailer2"] = {
			["Name"] = "Armytrailer 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["baletrailer"] = {
			["Name"] = "Baletrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["boattrailer"] = {
			["Name"] = "Boattrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["cablecar"] = {
			["Name"] = "Cablecar",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["docktrailer"] = {
			["Name"] = "Docktrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["freighttrailer"] = {
			["Name"] = "Freighttrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["graintrailer"] = {
			["Name"] = "Graintrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["proptrailer"] = {
			["Name"] = "Proptrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["raketrailer"] = {
			["Name"] = "Raketrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["tr2"] = {
			["Name"] = "Tr2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["tr3"] = {
			["Name"] = "Tr3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["tr4"] = {
			["Name"] = "Tr4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trflat"] = {
			["Name"] = "Trflat",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["tvtrailer"] = {
			["Name"] = "Tvtrailer",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["tanker"] = {
			["Name"] = "Tanker",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["tanker2"] = {
			["Name"] = "Tanker 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trailerlarge"] = {
			["Name"] = "Trailerlarge",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trailerlogs"] = {
			["Name"] = "Trailerlogs",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trailers"] = {
			["Name"] = "Trailers",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trailers2"] = {
			["Name"] = "Trailers 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trailers3"] = {
			["Name"] = "Trailers 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
		["trailers4"] = {
			["Name"] = "Trailers 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trailers"
		},
	
	-- Trains
		["freight"] = {
			["Name"] = "Freight",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
		["freightcar"] = {
			["Name"] = "Freightcar",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
		["freightcont1"] = {
			["Name"] = "Freightcont 1",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
		["freightcont2"] = {
			["Name"] = "Freightcont 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
		["freightgrain"] = {
			["Name"] = "Freightgrain",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
		["metrotrain"] = {
			["Name"] = "Metrotrain",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
		["tankercar"] = {
			["Name"] = "Rankercar",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Trens"
		},
	
	-- Utility
		["airtug"] = {
			["Name"] = "Airtug",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["caddy"] = {
			["Name"] = "Caddy",
			["Weight"] = 10,
			["Price"] = 30000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["caddy2"] = {
			["Name"] = "Caddy 2",
			["Weight"] = 10,
			["Price"] = 25000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["caddy3"] = {
			["Name"] = "Caddy 3",
			["Weight"] = 10,
			["Price"] = 20000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["docktug"] = {
			["Name"] = "Docktug",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["forklift"] = {
			["Name"] = "Forklift",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["mower"] = {
			["Name"] = "Mower",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["ripley"] = {
			["Name"] = "Ripley",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["sadler"] = {
			["Name"] = "Sadler",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["sadler2"] = {
			["Name"] = "Sadler 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["scrap"] = {
			["Name"] = "Scrap",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["towtruck"] = {
			["Name"] = "Towtruck",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["towtruck2"] = {
			["Name"] = "Towtruck 2",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["tractor"] = {
			["Name"] = "Tractor",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["tractor2"] = {
			["Name"] = "Tractor 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["tractor3"] = {
			["Name"] = "Tractor 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["utillitruck"] = {
			["Name"] = "Utillitruck",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["utillitruck2"] = {
			["Name"] = "Utillitruck 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["utillitruck3"] = {
			["Name"] = "Utillitruck 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
		["slamtruck"] = {
			["Name"] = "Slamtruck",
			["Weight"] = 20,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Utilitários"
		},
	
	-- Vans
		["bison"] = {
			["Name"] = "Bison",
			["Weight"] = 30,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["bison2"] = {
			["Name"] = "Bison 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["bison3"] = {
			["Name"] = "Bison 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["bobcatxl"] = {
			["Name"] = "Bobcat XL",
			["Weight"] = 45,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["boxville"] = {
			["Name"] = "Boxville",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["boxville2"] = {
			["Name"] = "Boxville 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["boxville3"] = {
			["Name"] = "Boxville 3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["boxville4"] = {
			["Name"] = "Boxville",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["boxville5"] = {
			["Name"] = "Boxville 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["burrito"] = {
			["Name"] = "Burrito",
			["Weight"] = 35,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["burrito2"] = {
			["Name"] = "Burrito 2",
			["Weight"] = 40,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["burrito3"] = {
			["Name"] = "Burrito 3",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["burrito4"] = {
			["Name"] = "Burrito 4",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["burrito5"] = {
			["Name"] = "Burrito 5",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["camper"] = {
			["Name"] = "Camper",
			["Weight"] = 50,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["gburrito"] = {
			["Name"] = "Gburrito",
			["Weight"] = 50,
			["Price"] = 100000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["gburrito2"] = {
			["Name"] = "Gburrito 2",
			["Weight"] = 10,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["journey"] = {
			["Name"] = "Journey",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["journey2"] = {
			["Name"] = "journey2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["minivan"] = {
			["Name"] = "Minivan",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["minivan2"] = {
			["Name"] = "Minivan 2",
			["Weight"] = 40,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["paradise"] = {
			["Name"] = "Paradise",
			["Weight"] = 50,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["pony"] = {
			["Name"] = "Pony",
			["Weight"] = 40,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["pony2"] = {
			["Name"] = "Pony 2",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["rumpo"] = {
			["Name"] = "Rumpo",
			["Weight"] = 30,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["rumpo2"] = {
			["Name"] = "Rumpo 2",
			["Weight"] = 40,
			["Price"] = 80000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["rumpo3"] = {
			["Name"] = "Rumpo 3",
			["Weight"] = 50,
			["Price"] = 300000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["speedo"] = {
			["Name"] = "Speedo",
			["Weight"] = 50,
			["Price"] = 70000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["speedo2"] = {
			["Name"] = "Speedo 2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["speedo4"] = {
			["Name"] = "Speedo 4",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["surfer"] = {
			["Name"] = "Surfer",
			["Weight"] = 40,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["surfer2"] = {
			["Name"] = "Surfer 2",
			["Weight"] = 40,
			["Price"] = 40000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["surfer3"] = {
			["Name"] = "surfer3",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["taco"] = {
			["Name"] = "Taco",
			["Weight"] = 15,
			["Price"] = 2000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["youga"] = {
			["Name"] = "Youga",
			["Weight"] = 70,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["youga2"] = {
			["Name"] = "Youga 2",
			["Weight"] = 70,
			["Price"] = 1000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},
		["youga3"] = {
			["Name"] = "Youga 3",
			["Weight"] = 70,
			["Price"] = 90000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Vans"
		},

	-- Public Service
		["polas350"] = {
			["Name"] = "Polaris 350",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["ambulance2"] = {
			["Name"] = "Ambulância",
			["Weight"] = 20,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["ballerpol"] = {
			["Name"] = "Baller",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["elegy2pol"] = {
			["Name"] = "Elegy 2",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["fugitivepol"] = {
			["Name"] = "Fugitive",
			["Weight"] = 60,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["komodapol"] = {
			["Name"] = "Komoda",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["kurumapol"] = {
			["Name"] = "Kuruma",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["maverick2"] = {
			["Name"] = "Maverick 2",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["nc700pol"] = {
			["Name"] = "Honda NC700",
			["Weight"] = 20,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["oracle2pol"] = {
			["Name"] = "Oracle 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["polchall"] = {
			["Name"] = "Dodge Challenger",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["polchar"] = {
			["Name"] = "Dodge Charger",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["explorerpol"] = {
			["Name"] = "Ford Explorer",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["guardianpol"] = {
			["Name"] = "Guardian",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["tauruspol"] = {
			["Name"] = "Ford Taurus",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["tahoepol"] = {
			["Name"] = "Chevrolet Tahoe",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["silveradopol"] = {
			["Name"] = "Chevrolet Silverado",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["police3pol"] = {
			["Name"] = "Police 3",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["policepol"] = {
			["Name"] = "Police",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["policetpol"] = {
			["Name"] = "Police T",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["poltang"] = {
			["Name"] = "Ford Mustang",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["polvic"] = {
			["Name"] = "Crown Victoria",
			["Weight"] = 50,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["r1250pol"] = {
			["Name"] = "BMW R1250",
			["Weight"] = 20,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["schafter2pol"] = {
			["Name"] = "Schafter 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["sheriff2pol"] = {
			["Name"] = "Sheriff 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["sultanrspol"] = {
			["Name"] = "Sultan RS",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},
		["tailgater2pol"] = {
			["Name"] = "Tailgater 2",
			["Weight"] = 40,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Empregos"
		},	
	-- Imported
		
		["jester5"] = {
			["Name"] = "Magnus",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 75000,
			["Class"] = "Exclusivos"
		},
		["roxanne"] = {
			["Name"] = "Roxanne",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 75000,
			["Class"] = "Exclusivos"
		},
		["sunrise"] = {
			["Name"] = "Sunrise",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 75000,
			["Class"] = "Exclusivos"
		},
		["teslamodels"] = {
			["Name"] = "Tesla Model S",
			["Weight"] = 80,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 75000,
			["Class"] = "Exclusivos"
		},

		["22m5"] = {
			["Name"] = "BMW M5",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["69charger"] = {
			["Name"] = "Dodge Charger 1969",
			["Weight"] = 45,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 20,
			["Class"] = "Importados"
		},
		["488misha"] = {
			["Name"] = "Ferrari 488",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 30,
			["Class"] = "Importados"
		},
		["675ltsp"] = {
			["Name"] = "McLaren 675",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 30,
			["Class"] = "Importados"
		},
		["a45amg"] = {
			["Name"] = "Mercedes A45",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 20,
			["Class"] = "Importados"
		},
		["a80"] = {
			["Name"] = "Toyota Supra A80",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["acs8"] = {
			["Name"] = "BMW i8",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 30,
			["Class"] = "Importados"
		},
		["bdragon"] = {
			["Name"] = "Bentley Dragon",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 20,
			["Class"] = "Importados"
		},
		["bmwr"] = {
			["Name"] = "BMW R1100",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["bt62r"] = {
			["Name"] = "Brabham BT62",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["chiron17"] = {
			["Name"] = "Bugatti Chiron",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["cp9a"] = {
			["Name"] = "Mitsubishi Lancer Evo 7",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 30,
			["Class"] = "Importados"
		},
		["dc5"] = {
			["Name"] = "Honda Integra",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 20,
			["Class"] = "Importados"
		},
		["demon"] = {
			["Name"] = "Dodge Challenger STR",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 20,
			["Class"] = "Importados"
		},
		["e36prb"] = {
			["Name"] = "BMW M3 E36",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 30,
			["Class"] = "Importados"
		},
		["evo9"] = {
			["Name"] = "Mitsubishi Lancer Evo 9",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["filthynsx"] = {
			["Name"] = "Honda Acura",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["fk8"] = {
			["Name"] = "Honda Civic Type-R",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["skyliner342"] = {
			["Name"] = "Nissan GTR R34",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 50,
			["Class"] = "Importados"
		},
		["gt63"] = {
			["Name"] = "Mercedes GT63",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["gt86"] = {
			["Name"] = "Toyota GT86",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 25,
			["Class"] = "Importados"
		},
		["lc500"] = {
			["Name"] = "Lexus LC 500",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 20,
			["Class"] = "Importados"
		},
		["lp700"] = {
			["Name"] = "Lamborghini LP 700",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["maj350z"] = {
			["Name"] = "Nissan 350z",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["r1"] = {
			["Name"] = "Yamaha R1",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["s1000rr"] = {
			["Name"] = "BMW S 1000 RR",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["m1000rr"] = {
			["Name"] = "BMW M 1000 RR",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["cb500x"] = {
			["Name"] = "CB 500X",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 25,
			["Class"] = "Importados"
		},
		["audirs6"] = {
			["Name"] = "Audi RS6",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 45,
			["Class"] = "Importados"
		},
		["r32"] = {
			["Name"] = "Nissan GTR R32",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["r35"] = {
			["Name"] = "Nissan GTR R35",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 40,
			["Class"] = "Importados"
		},
		["rr14"] = {
			["Name"] = "Range Rover Vogue",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 15,
			["Class"] = "Importados"
		},
		["senna"] = {
			["Name"] = "McLaren Senna",
			["Weight"] = 30,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["tsgr20"] = {
			["Name"] = "Toyota Supra GR",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["zx10"] = {
			["Name"] = "Kawasaki Ninja Zx-10r",
			["Weight"] = 20,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["lancerevolutionx"] = {
			["Name"] = "Lancer Evolution X",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["subaruimpreza"] = {
			["Name"] = "Subaru Impreza",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 35,
			["Class"] = "Importados"
		},
		["silvias15"] = {
			["Name"] = "Silvia S15",
			["Weight"] = 50,
			["Price"] = 150000,
			["Mode"] = "Rental",
			["Gemstone"] = 30,
			["Class"] = "Importados"
		},


		["bimx"] = {
			["Name"] = "BMX",
			["Weight"] = 0,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["unicycle"] = {
			["Name"] = "Monociclo",
			["Weight"] = 0,
			["Price"] = 10000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["brickade2"] = {
			["Name"] = "brickade2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["boor"] = {
			["Name"] = "boor",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["comet7"] = {
			["Name"] = "Comet 7",
			["Weight"] = 20,
			["Price"] = 300000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["patriot3"] = {
			["Name"] = "Patriot 3",
			["Weight"] = 40,
			["Price"] = 320000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["omnisegt"] = {
			["Name"] = "Omni SE GT",
			["Weight"] = 40,
			["Price"] = 250000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["tenf2"] = {
			["Name"] = "Tenf 2",
			["Weight"] = 40,
			["Price"] = 190000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["sm722"] = {
			["Name"] = "Mm722",
			["Weight"] = 40,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["brioso3"] = {
			["Name"] = "Brioso 3",
			["Weight"] = 40,
			["Price"] = 50000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["lm87"] = {
			["Name"] = "Lm87",
			["Weight"] = 40,
			["Price"] = 170000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["iwagen"] = {
			["Name"] = "Iwagen",
			["Weight"] = 40,
			["Price"] = 260000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["jubilee"] = {
			["Name"] = "Jubilee",
			["Weight"] = 40,
			["Price"] = 150000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["reever"] = {
			["Name"] = "Reever",
			["Weight"] = 20,
			["Price"] = 170000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["shinobi"] = {
			["Name"] = "Shinobi",
			["Weight"] = 20,
			["Price"] = 180000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["granger2"] = {
			["Name"] = "Granger 2",
			["Weight"] = 65,
			["Price"] = 200000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["buffalo4"] = {
			["Name"] = "Buffalo 4",
			["Weight"] = 30,
			["Price"] = 250000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["vigero2"] = {
			["Name"] = "Vigero 2",
			["Weight"] = 40,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["sentinel4"] = {
			["Name"] = "Sentinel 4",
			["Weight"] = 40,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["ignus"] = {
			["Name"] = "Ignus",
			["Weight"] = 20,
			["Price"] = 250000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["youga4"] = {
			["Name"] = "Youga 4",
			["Weight"] = 70,
			["Price"] = 90000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["zeno"] = {
			["Name"] = "Zeno",
			["Weight"] = 20,
			["Price"] = 250000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["deity"] = {
			["Name"] = "Deity",
			["Weight"] = 40,
			["Price"] = 300000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["kanjosj"] = {
			["Name"] = "Kanjo SJ",
			["Weight"] = 40,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["greenwood"] = {
			["Name"] = "Greenwood",
			["Weight"] = 40,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["corsita"] = {
			["Name"] = "Corsita",
			["Weight"] = 40,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},
		["cinquemila"] = {
			["Name"] = "Cinquemila",
			["Weight"] = 30,
			["Price"] = 200000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["rhinehart"] = {
			["Name"] = "Rhinehart",
			["Weight"] = 40,
			["Price"] = 5000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "SUVs"
		},
		["tenf"] = {
			["Name"] = "Tenf",
			["Weight"] = 40,
			["Price"] = 180000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["postlude"] = {
			["Name"] = "Postlude",
			["Weight"] = 40,
			["Price"] = 60000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Esportivos"
		},
		["mule5"] = {
			["Name"] = "Mule 5",
			["Weight"] = 0,
			["Price"] = 1000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["baller7"] = {
			["Name"] = "Baller 7",
			["Weight"] = 50,
			["Price"] = 480000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["conada"] = {
			["Name"] = "Conada",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["champion"] = {
			["Name"] = "Champion",
			["Weight"] = 20,
			["Price"] = 220000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["draugur"] = {
			["Name"] = "Draugur",
			["Weight"] = 40,
			["Price"] = 320000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Off-Roads"
		},
		["astron"] = {
			["Name"] = "Astron",
			["Weight"] = 40,
			["Price"] = 220000,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Embarcações"
		},
		["ruiner4"] = {
			["Name"] = "Ruiner4",
			["Weight"] = 40,
			["Price"] = 110000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Muscles"
		},
		["weevil2"] = {
			["Name"] = "weevil2",
			["Weight"] = 40,
			["Price"] = 140000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Compactos"
		},
		["torero2"] = {
			["Name"] = "Torero 2",
			["Weight"] = 40,
			["Price"] = 200000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Clássicos"
		},	
		["samumav"] = {
			["Name"] = "heli samu",
			["Weight"] = 100,
			["Price"] = 1000,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["energyheli"] = {
			["Name"] = "heli basic samu",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["energyr1200samu"] = {
			["Name"] = "r1200 samu",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},

		["Wrasprinter"] = {
			["Name"] = "sprinter samu",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["Wrgle53"] = {
			["Name"] = "gle samu",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["xtsamu"] = {
			["Name"] = "xt66 samu",
			["Weight"] = 0,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},

		
		

	    ["vtrail21"] = {
			["Name"] = "trail pc descaracterizada",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["trail21dope2"] = {
			["Name"] = "trailblazer dope 21",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["trail20Pcerj1"] = {
			["Name"] = "trailblazer Pcerj 20",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["s10iml"] = {
			["Name"] = "S10 IML",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["s10hccivil"] = {
			["Name"] = "S10 High Country",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["rumpobox"] = {
			["Name"] = "Caminhão apreensão",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["riot4"] = {
			["Name"] = "Brindado Operações",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["onipc1"] = {
			["Name"] = "Onibus Pcerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["as350b3"] = {
			["Name"] = "Helicoptero",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},

		["wrr1200prf"] = {
			["Name"] = "wrr1200prf",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["trail21federalg2"] = {
			["Name"] = "trail21federalg2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["prfcamaro19"] = {
			["Name"] = "prfcamaro19",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["l200prf"] = {
			["Name"] = "l200prf",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["cruze21prf"] = {
			["Name"] = "cruze21prf",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
		["as350prf"] = {
			["Name"] = "Helicoptero",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},

		["flatbed3"] = {
			["Name"] = "Guincho",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["lander"] = {
			["Name"] = "Lander",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["s10pm"] = {
			["Name"] = "s10",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["sw4pm"] = {
			["Name"] = "sw4 2013",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["trail15pm"] = {
			["Name"] = "trailblazer 2015",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["trail18pm2"] = {
			["Name"] = "trailblazer 2018",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["trail2022pm"] = {
			["Name"] = "trailblazer 2022",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["trailpm20"] = {
			["Name"] = "trailblazer 2020",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},
	
		["as350b3"] = {
			["Name"] = "Helicoptero",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = "Work",
			["Gemstone"] = 0,
			["Class"] = "Emergência"
		},

		["saveiro"] = {
			["Name"] = "Saveiro CL 1.6",
			["Weight"] = 60,
			["Price"] = 100000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["tcross"] = {
			["Name"] = "Volkswagen T-Cross",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["uno"] = {
			["Name"] = "Fiat Uno 1.3",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["up"] = {
			["Name"] = "Volkswagen Up",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["vectra"] = {
			["Name"] = "Chevrolet Vectra",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["vwgol"] = {
			["Name"] = "Gol Quadrado",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["brasilia"] = {
			["Name"] = "Volkswagen Brasília",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["checelta"] = {
			["Name"] = "Chevrolet Celta",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["civic2010"] = {
			["Name"] = "Honda Civic 2010",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["civicsi"] = {
			["Name"] = "Honda Civic",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["cruze"] = {
			["Name"] = "Chevrolet Cruze",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["focusrs"] = {
			["Name"] = "Ford Focus RS",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["gcmcity14"] = {
			["Name"] = "Honda City 2014",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["gcmsanderogt"] = {
			["Name"] = "Renault Sandero",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["hondacivic20"] = {
			["Name"] = "Honda civic 2020",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["golfgti"] = {
			["Name"] = "Golf GTI",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["q820"] = {
			["Name"] = "Audi Q8",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["c981"] = {
			["Name"] = "porsche 981",
			["Weight"] = 60,
			["Price"] = 150000,
			["Gemstone"] = 0,
			["Mode"] = "Cars",
			["Class"] = "Nacional"
		},
		["pop110i"] = {
			["Name"] = "Honda Pop 110i",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Nacional"
		},
		["cg160"] = {
			["Name"] = "CG 160",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Nacional"
		},
		["titan2022"] = {
			["Name"] = "Titan 2022",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Nacional"
		},
		["hornet2014"] = {
			["Name"] = "Hornet 2014",
			["Weight"] = 60,
			["Price"] = 150000,
			["Mode"] = "Cars",
			["Gemstone"] = 0,
			["Class"] = "Nacional"
		},

		["opala"] = {
			["Name"] = "Chevrolet Opala Antigo",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 30,
			["Class"] = "Exclusivos"
		},
		["s10hc"] = {
			["Name"] = "S10 HC",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["trail21"] = {
			["Name"] = "Trailblazer 2021",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["tritonhpe"] = {
			["Name"] = "Mitsubishi Triton",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 80,
			["Class"] = "Exclusivos"
		},
		["unoway"] = {
			["Name"] = "Fiat Uno Paredão",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 35,
			["Class"] = "Exclusivos"
		},
		["vwgolf2"] = {
			["Name"] = "Golf Paredão",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 30,
			["Class"] = "Exclusivos"
		},
		["2016ranger"] = {
			["Name"] = "Ford Ranger 2016",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 80,
			["Class"] = "Exclusivos"
		},
		["amarok"] = {
			["Name"] = "Volkswagen Amarok",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 80,
			["Class"] = "Exclusivos"
		},
		["chevette"] = {
			["Name"] = "Chevrolet Chevett",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 45,
			["Class"] = "Exclusivos"
		},
		["civic"] = {
			["Name"] = "Honda Civic 2001",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["golg9"] = {
			["Name"] = "Gol G9",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 25,
			["Class"] = "Exclusivos"
		},
		["jeep"] = {
			["Name"] = "Jeep",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 40,
			["Class"] = "Exclusivos"
		},
		["jettagli"] = {
			["Name"] = "Volkswagen Jetta GLI",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 40,
			["Class"] = "Exclusivos"
		},
		["evo9"] = {
			["Name"] = "Lancer evo9",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 50,
			["Class"] = "Exclusivos"
		},
		["f850"] = {
			["Name"] = "BMW f850",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 40,
			["Class"] = "Exclusivos"
		},
		["landvelar"] = {
			["Name"] = "Landvelar",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["nissangtr"] = {
			["Name"] = "Nissan R35",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["x6m"] = {
			["Name"] = "bmw x6m",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["audirs6"] = {
			["Name"] = "Audi rs6",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["bmwg07"] = {
			["Name"] = "BMW X7",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 60,
			["Class"] = "Exclusivos"
		},
		["bmwi8"] = {
			["Name"] = "BMW i8",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 70,
			["Class"] = "Exclusivos"
		},
		["bmwm4gts"] = {
			["Name"] = "BMW M4",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 70,
			["Class"] = "Exclusivos"
		},

		["r1"] = {
			["Name"] = "Yamaha R1",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 50,
			["Class"] = "Exclusivos"
		},
	
		["r6"] = {
			["Name"] = "Yamaha R6",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 50,
			["Class"] = "Exclusivos"
		},
	
		["gs310"] = {
			["Name"] = "BMW GS310",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 35,
			["Class"] = "Exclusivos"
		},
	
		["motorizadamoto"] = {
			["Name"] = "Motorizada",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 15,
			["Class"] = "Exclusivos"
		},
	
		["gsxr1000"] = {
			["Name"] = "Suzuki GSX-R1000",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 70,
			["Class"] = "Exclusivos"
		},
	
		["tenere1200"] = {
			["Name"] = "Tenere 1200",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 80,
			["Class"] = "Exclusivos"
		},
	
		["tiger1200"] = {
			["Name"] = "Tiger 1200",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 35,
			["Class"] = "Exclusivos"
		},
	
		["tigerse"] = {
			["Name"] = "Triumph Tiger",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 35,
			["Class"] = "Exclusivos"
		},
	
		["xj6"] = {
			["Name"] = "XJ6",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 100,
			["Class"] = "Exclusivos"
		},
	
		["xt2017"] = {
			["Name"] = "XT 2017",
			["Weight"] = 60,
			["Price"] = 0,
			["Mode"] = "Cars",
			["Gemstone"] = 30,
			["Class"] = "Exclusivos"
		},
		["rangerxlsbpchq"] = {
			["Name"] = "XLS CHOQUE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerxls"] = {
			["Name"] = "ranger xls",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sprinterbpchq"] = {
			["Name"] = "Sprinter Choque",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["tigergetem"] = {
			["Name"] = "Tiger GTM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200bac"] = {
			["Name"] = "l200bac",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200bac22"] = {
			["Name"] = "l200bac",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200bpchq"] = {
			["Name"] = "l200 Choque",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200choque"] = {
			["Name"] = "l200 Choque",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerbpchq"] = {
			["Name"] = "Ranger BPCHQ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerciespp"] = {
			["Name"] = "Ranger Ciesp",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerbope"] = {
			["Name"] = "Ranger Bope",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200coe"] = {
			["Name"] = "L200 Coe",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0, 
			["Class"] = "Militares"
		},
		["rangerxlcpam"] = {
			["Name"] = "Ranger Ambiental",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerxlscpam"] = {
			["Name"] = "XLS AMBIENTAL",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sprintercbmerj"] = {
			["Name"] = "SPRINTER CBMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangercbmerj"] = {
			["Name"] = "RANGER CBMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["frontiercbmerj"] = {
			["Name"] = "FRONTIER CBMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["frontiercbmerj19"] = {
			["Name"] = "FRONTIER CBMERJ19",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerbpve"] = {
			["Name"] = "RANGER BPVE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["s10pmerj"] = {
			["Name"] = "S10 PMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["yarispmp"] = {
			["Name"] = "YARIS PMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerptm"] = {
			["Name"] = "Ranger Patamo",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["dusterpmerj"] = {
			["Name"] = "Duster Pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hiluxgam"] = {
			["Name"] = "Hilux BAC",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hiluxpmerj"] = {
			["Name"] = "Hilux Pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["fordkapmerj"] = {
			["Name"] = "FordKA Pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadoturq"] = {
			["Name"] = "Blindado ResgatePM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["fenixpmerj"] = {
			["Name"] = "Helicóptero PM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadopmerj14"] = {
			["Name"] = "Caveirão PMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadomike"] = {
			["Name"] = "Caveirão MIKE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200pmerjb"] = {
			["Name"] = "L200 PMERJB",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200rpmont"] = {
			["Name"] = "L200 PM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadocpp"] = {
			["Name"] = "Caveirão CPP",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200gam"] = {
			["Name"] = "L200 GAM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["versapmerj"] = {
			["Name"] = "VERSA PMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["xrepmerj"] = {
			["Name"] = "XRE PMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["versapmerjrf"] = {
			["Name"] = "VERSA PMERJ RF",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["xrepmerj22"] = {
			["Name"] = "XRE PMERJ 22",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200pmerj22c"] = {
			["Name"] = "l200 pmerj22c",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200pmerj22"] = {
			["Name"] = "l200 pmerj22",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadopmerj"] = {
			["Name"] = "CAVEIRÃO 41",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200rpmontb"] = {
			["Name"] = "L200 CAVALARIA",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hiluxptm"] = {
			["Name"] = "HILUX PTM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["fordkabp"] = {
			["Name"] = "FordKAbp",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sprintersoegse"] = {
			["Name"] = "VAN SOEGSE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerseap"] = {
			["Name"] = "RANGER PENAL",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["trailblazercot"] = {
			["Name"] = "BLINDADO PF",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["trailblazerpf"] = {
			["Name"] = "SW4 PF",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerpf"] = {
			["Name"] = "RANGER PF",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["trailblazerprf"] = {
			["Name"] = "SW4 PRF",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["trailblazergrr"] = {
			["Name"] = "SW4 PRF BLINDADO",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["trailblazer24prf"] = {
			["Name"] = "SW4 PRF BLINDADO2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerprfblind"] = {
			["Name"] = "RANGER PRF BLINDADO",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerprf"] = {
			["Name"] = "RANGER PRF",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["versadesc"] = {
			["Name"] = "Versa Desc",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["s10pcerj"] = {
			["Name"] = "S10 Pcerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangercore"] = {
			["Name"] = "Ranger Core",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerpcerjc"] = {
			["Name"] = "Ranger Pcerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerpcerj22"] = {
			["Name"] = "Ranger Pcerj22",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sprinterpcerj"] = {
			["Name"] = "Sprinter Pcerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangercorec"] = {
			["Name"] = "RANGER CORE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["versapcerj"] = {
			["Name"] = "VERSA PCERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200coe"] = {
			["Name"] = "L200 COE2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hueypcerj"] = {
			["Name"] = "HELICOPTERO PCERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["falcaopcerj"] = {
			["Name"] = "Falcão PCERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["corollapcerj"] = {
			["Name"] = "Corolla PCERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadodrfc"] = {
			["Name"] = "Blindado DRFC",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadodre"] = {
			["Name"] = "Blindado DRE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["blindadocore"] = {
			["Name"] = "Blindado CORE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerpcerj"] = {
			["Name"] = "RANGER PCERJ2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangercore"] = {
			["Name"] = "RANGER CORE2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["yarissp"] = {
			["Name"] = "Corolla SegPresente",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["golg8sp"] = {
			["Name"] = "GOL SegPresente",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["peugeot208sp"] = {
			["Name"] = "Peugeot SegPresente",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerrecomg"] = {
			["Name"] = "Ranger RECOM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sw4recom24p"] = {
			["Name"] = "SW4 RECOM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hiluxrecom"] = {
			["Name"] = "HILUX RECOM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["s10recomv"] = {
			["Name"] = "S10 RECOM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["s10recom16"] = {
			["Name"] = "S10 RECOM16",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sw4recom"] = {
			["Name"] = "SW4 RECOM1",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sw4recom24"] = {
			["Name"] = "SW4 RECOM24",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200choquesm"] = {
			["Name"] = "l200 choque sm",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hiluxbope"] = {
			["Name"] = "HILUX BOPE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerbopesm"] = {
			["Name"] = "RANGER BOPE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hueypmerj"] = {
			["Name"] = "HELICOPTERO GAM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerbope"] = {
			["Name"] = "RANGER BOPE2",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["hiluxcpam"] = {
			["Name"] = "HILUX CPAM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["l200cpam"] = {
			["Name"] = "L200 CPAM",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sprintergesar"] = {
			["Name"] = "VAN AMBULANCIA",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["sprintersamu2"] = {
			["Name"] = "SPRINTER SAMU",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerpmp"] = {
			["Name"] = "RANGER BPVE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["s10bpve"] = {
			["Name"] = "S10 BPVE",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["xrepmerj22"] = {
			["Name"] = "XRE PMERJ",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerbpveg"] = {
			["Name"] = "RANGER BPVE22",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["corollap2"] = {
			["Name"] = "corolla descaracterizado", 
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["s10desc"] = {
			["Name"] = "S10 descaracterizado", 
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["corollapc"] = {
			["Name"] = "corolla pc",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["pajerod"] = {
			["Name"] = "pajero pc",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["police4"] = {
			["Name"] = "duster descaracterizada",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["helibpmm"] = {
			["Name"] = "heli pc",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerpc"] = {
			["Name"] = "ranger pc",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["WRs10"] = {
			["Name"] = "s10 choque",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["explorer22"] = {
			["Name"] = "explorer choque 2022",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["explorer21cspp"] = {
			["Name"] = "explorer choque 2021",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["polmav"] = {
			["Name"] = "heli pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["WRr1200"] = {
			["Name"] = "r1200 pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["corollapmerj"] = {
			["Name"] = "corolla pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
		["rangerxlspmerj"] = {
			["Name"] = "ranger pmerj",
			["Weight"] = 40,
			["Price"] = 100,
			["Mode"] = nil,
			["Gemstone"] = 0,
			["Class"] = "Militares"
		},
	}
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLEGLOBAL
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleGlobal()
		return List
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLEEXIST
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleExist(Name)
		return List[Name] and true or false
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLENAME
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleName(Name)
		if List[Name] and List[Name]["Name"] then
			return List[Name]["Name"]
		end
	
		return false
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLECHEST
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleChest(Name)
		if List[Name] and List[Name]["Weight"] then
			return List[Name]["Weight"]
		end
	
		return 0
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLEPRICE
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehiclePrice(Name)
		if List[Name] and List[Name]["Price"] then
			return List[Name]["Price"]
		end
		return 0
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLEMODE
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleMode(Name)
		if List[Name] and List[Name]["Mode"] then
			return List[Name]["Mode"]
		end
	
		return false
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLEGEMSTONE
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleGemstone(Name)
		if List[Name] and List[Name]["Gemstone"] then
			return List[Name]["Gemstone"]
		end
		return 0
	end
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- VEHICLECLASS
	-----------------------------------------------------------------------------------------------------------------------------------------
	function VehicleClass(Name)
		if List[Name] and List[Name]["Class"] then
			return List[Name]["Class"]
		end
	
		return "Desconhecido"
	end