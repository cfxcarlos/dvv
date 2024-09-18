-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPS
-----------------------------------------------------------------------------------------------------------------------------------------
Groups = {
	-- Staff
	["Admin"] = {
		["Parent"] = {
			["Admin"] = true
		},
		["Hierarchy"] = { 
			[1] = "Founder",
			[2] = "COO",			
			[3] = "Diretor",
			[4] = "Supervisor", 
			[5] = "Administrador",
			[6] = "Moderador", 
			[7] = "Suporte", 
			[8] = "Helper",
			[9] = "SS" 
		},
		["Service"] = {}
	},
	-- Buff Org
	["Buff"] = {
		["Parent"] = {
			["Buff"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Salary"] = { 2250 },
		["Service"] = {}
	},
	-- Vip
	["Premium"] = {
		["Parent"] = {
			["Bronze"] = true,
			["Prata"] = true,
			["Ouro"] = true,
			["Diamante"] = true,
			["Rubi"] = true,
			["NovaModa"] = true,
			["Patrocinador"] = true,
			["Spray"] = true,
			["Attachs"] = true,
			["Spotify"] = true,
		},
		["Hierarchy"] = {},
		["Salary"] = {},
		["Service"] = {}
	},
	["Spotify"] = {
		["Parent"] = {
			["Spotify"] = true
		},
		["Hierarchy"] = { "Spotify" },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Spray"] = {
		["Parent"] = {
			["Spray"] = true
		},
		["Hierarchy"] = { "Spray" },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Attachs"] = {
		["Parent"] = {
			["Attachs"] = true
		},
		["Hierarchy"] = { "Attachs" },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Bronze"] = {
		["Parent"] = {
			["Bronze"] = true
		},
		["Hierarchy"] = { "Bronze" },
		["Salary"] = { 3000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Prata"] = {
		["Parent"] = {
			["Prata"] = true
		},
		["Hierarchy"] = { "Prata" },
		["Salary"] = { 5000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Ouro"] = {
		["Parent"] = {
			["Ouro"] = true
		},
		["Hierarchy"] = { "Ouro" },
		["Salary"] = { 10000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Diamante"] = {
		["Parent"] = {
			["Diamante"] = true
		},
		["Hierarchy"] = { "Diamante" },
		["Salary"] = { 15000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Rubi"] = {
		["Parent"] = {
			["Rubi"] = true
		},
		["Hierarchy"] = { "Rubi" },
		["Salary"] = { 25000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["NovaModa"] = {
		["Parent"] = {
			["NovaModa"] = true
		},
		["Hierarchy"] = { "NovaModa" },
		["Salary"] = { 30000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Patrocinador"] = {
		["Parent"] = {
			["Patrocinador"] = true
		},
		["Hierarchy"] = { "Patrocinador" },
		["Salary"] = { 50000 },
		["Service"] = {},
		["Type"] = "Premium",
	},
	["Streamer1"] = {
		["Name"] = "Streamer1",
		["Parent"] = {
			["Streamer1"] = true,
		},
		["Hierarchy"] = { [1] = "Streamer Level 1", },
		["Service"] = {},
		["Type"] = "Premium",
		["Client"] = true
	},
	["Streamer2"] = {
		["Name"] = "Streamer2",
		["Parent"] = {
			["Streamer2"] = true,
		},
		["Hierarchy"] = { [1] = "Streamer Level 2", },
		["Salary"] = { [1] = 50000 },
		["Service"] = {},
		["Type"] = "Premium",
		["Client"] = true
	},
	["Streamer3"] = {
		["Name"] = "Streamer3",
		["Parent"] = {
			["Streamer3"] = true,
		},
		["Hierarchy"] = { [1] = "Streamer Level 3", },
		["Salary"] = { [1] = 75000 },
		["Service"] = {},
		["Type"] = "Premium",
		["Client"] = true
	},
	-- Policia
	["Policia"] = {
		["Parent"] = {
			["Pcerj"] = true,
			["Pmerj"] = true,
			["Bope"] = true,
			["Prf"] = true,
			["Core"] = true,
			["Choque"] = true,
			["Exercito"] = true,
			["PoliciaFederal"] = true,
		},
		["Hierarchy"] = { "Membro" },
		["Service"] = {}
	},
	["Pcerj"] = {
		["Name"] = "Policia Civil",
		["Parent"] = {
			["Pcerj"] = true,
		},
		["Hierarchy"] = {  
			[1] = "Delegado", 
			[2] = "Investigador", 
			[3] = "Escrivão", 
			[4] = "Perito Criminal", 
			[5] = "Médico Legista", 
			[6] = "Auxiliar de Papiloscopista",
		},
		["Salary"] = { 
			[1] = 45000, 
			[2] = 40000, 
			[3] = 35000, 
			[4] = 25000, 
			[5] = 15000, 
			[6] = 12500, 
		},
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["Pmerj"] = {
		["Name"] = "Policia Militar",
		["Parent"] = {
			["Pmerj"] = true,
		},
		["Hierarchy"] = { [1] = "Comandante Geral", [2] = "Coronel", [3] = "Tenente Coronel", [4] = "Major", "Capitão", [5] = "Primeiro Tenente", [6] = "Segundo Tenente", [7] = "Aspirante a Oficial", [8] = "Terceiro Aluno", [9] = "Segundo Aluno", [10] = "Primeiro Aluno", [11] = "Aluno Csta", [12] = "Subtenente", [13] = "Primeiro Sargento", [14] = "Segundo Sargento", [15] = "Terceiro Sargento", [16] = "Aluno Sargento", [17] = "Cabo", [19] = "Soldado" },
		["Salary"] = { [1] = 45000, [2] = 40000, [3] = 35000, [4] = 30000, [5] = 25000, [6] = 20000, [7] = 18000, [8] = 17000, [9] = 16000, [10] = 15500, [11] = 15000, [12] = 1500, [13] = 15000, [14] = 14000,[15] = 13000, [16] = 12000, [17] = 11000, [18] = 10000, [19] = 9000 },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["Bope"] = {
		["Name"] = "Batalhão Bope",
		["Parent"] = {
			["Bope"] = true,
		},
		["Hierarchy"] = { "Coronel", "Tenente Coronel", "Major", "Capitão", "Primeiro Tenente", "Segundo Tenente", "Subtenente", "Primeiro Sargento", "Segundo Sargento", "Terceiro Sargento", "Cabo", "Soldado" },
		["Salary"] = { [1] = 45000, [2] = 40000, [3] = 35000, [4] = 30000, [5] = 25000, [6] = 20000, [7] = 18000, [8] = 17000, [9] = 16000, [10] = 15500, [11] = 15000, [12] = 1500, [13] = 15000, [14] = 14000,[15] = 13000, [16] = 12000, [17] = 11000, [18] = 10000, [19] = 9000  },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["PoliciaFederal"] = {
		["Name"] = "Policia Federal",
		["Parent"] = {
			["PoliciaFederal"] = true,
		},
		["Hierarchy"] = { "Delegado", "Perito Criminal", "Escrivao", "COT", "Agente PF" },
		["Salary"] = { [1] = 45000, [2] = 40000, [3] = 35000, [4] = 30000, [5] = 25000 },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["Recom"] = {
		["Name"] = "Batalhão Recom",
		["Parent"] = {
			["Recom"] = true,
		},
		["Hierarchy"] = { "Coronel", "Tenente Coronel", "Major", "Capitão", "Primeiro Tenente", "Segundo Tenente", "Subtenente", "Primeiro Sargento", "Segundo Sargento", "Terceiro Sargento", "Cabo", "Soldado" },
		["Salary"] = { 45000, 30000, 25000, 20000, 15000, 14000, 13000, 12000, 11000, 11000, 10500, 10000, 9000, 9000 },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["Choque"] = {
		["Name"] = "Batalhão Choque",
		["Parent"] = {
			["Choque"] = true,
		},
		["Hierarchy"] = { "Coronel", "Tenente Coronel", "Major", "Capitão", "Primeiro Tenente", "Segundo Tenente", "Subtenente", "Primeiro Sargento", "Segundo Sargento", "Terceiro Sargento", "Cabo", "Soldado" },
		["Salary"] = { 45000, 30000, 25000, 20000, 15000, 14000, 13000, 12000, 11000, 11000, 10500, 10000, 9000, 9000 },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["Core"] = {
		["Name"] = "Batalhão Core",
		["Parent"] = {
			["Core"] = true,
		},
		["Hierarchy"] = { "Coronel", "Tenente Coronel", "Major", "Capitão", "Primeiro Tenente", "Segundo Tenente", "Subtenente", "Primeiro Sargento", "Segundo Sargento", "Terceiro Sargento", "Cabo", "Soldado" },
		["Salary"] = { 45000, 30000, 25000, 20000, 15000, 14000, 13000, 12000, 11000, 11000, 10500, 10000, 9000, 9000 },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true,
		["Pmerj"] = true
	},
	["Prf"] = {
		["Name"] = "Policia Rodoviaria",
		["Parent"] = {
			["Prf"] = true,
		},
		["Hierarchy"] = { [1] = "Comandante Geral", [2] = "Coronel", [3] = "Tenente Coronel", [4] = "Major", "Capitão", [5] = "Primeiro Tenente", [6] = "Segundo Tenente", [7] = "Aspirante a Oficial", [8] = "Terceiro Aluno", [9] = "Segundo Aluno", [10] = "Primeiro Aluno", [11] = "Aluno Csta", [12] = "Subtenente", [13] = "Primeiro Sargento", [14] = "Segundo Sargento", [15] = "Terceiro Sargento", [16] = "Aluno Sargento", [17] = "Cabo", [19] = "Soldado" },
		["Salary"] = {  [1] = 45000, [2] = 40000, [3] = 35000, [4] = 30000, [5] = 25000, [6] = 20000, [7] = 18000, [8] = 17000, [9] = 16000, [10] = 15500, [11] = 15000, [12] = 1500, [13] = 15000, [14] = 14000,[15] = 13000, [16] = 12000, [17] = 11000, [18] = 10000, [19] = 9000  },
		["Service"] = {},
		["Type"] = "Policia",
		["Client"] = true
	},
	["Exercito"] = {
		["Name"] = "Forças Armadas",
		["Parent"] = {
			["Exercito"] = true,
		},
		["Hierarchy"] = { 
			"General de Exército",
			"General de Divisão",
			"General de Brigada",
			"Coronel",
			"Tenente Coronel",
			"Major",
			"Capitão",
			"Primeiro Tenente",
			"Segundo Tenente",
			"Aspirante à Oficial",
			"Sub Tenente",
			"Primeiro Sargento",
			"Segundo Sargento",
			"Terceiro Sargento",
			"Cabo",
			"Soldado",
			"Recruta"	
		},
		["Salary"] = {  13471, 12912, 12490, 11451, 11250, 11088, 9135, 8245, 7490, 6993, 6169, 5483, 4770, 3825, 2627, 1852, 956 },
		["Service"] = {},
		["Type"] = "Gov",
		["Client"] = true
	},
	-- Hospital
	["Hospital"] = {
		["Parent"] = {
			["Hospital"] = true
		},
		["Hierarchy"] = { "Diretor","Medico","Paramedico","Enfermeiro" },
		["Salary"] = { 50000,40000,35000,25000 },
		["Service"] = {},
		["Type"] = "Hospital"
	},
	-- Mecanica
	["AutoSport"] = {
		["Parent"] = {
			["AutoSport"] = true
		},
		["Hierarchy"] = { "Dono","Gerente","Mecanico","MecAuxilar" },
		["Salary"] = { 10000,5500,5000 },
		["Service"] = {},
		["Type"] = "Mecanica"
	},
	["EastCustoms"] = {
		["Parent"] = {
			["EastCustoms"] = true
		},
		["Hierarchy"] = { "Dono","Gerente","Mecanico","MecAuxilar" },
		["Salary"] = { 10000,5500,5000 },
		["Service"] = {},
		["Type"] = "Mecanica"
	},
	-- MATUTOS
	["Matuto"] = {
		["Parent"] = {
			["Matuta"] = true
		},
		["Hierarchy"] = { "Matuto" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Matuta"] = {
		["Parent"] = {
			["Matuta"] = true
		},
		["Hierarchy"] = { "Matuta" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	--FAVELAS
	["ComplexoDaPenha"] = {
		["Parent"] = {
			["ComplexoDaPenha"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Castelar"] = {
		["Parent"] = {
			["Castelar"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Egito"] = {
		["Parent"] = {
			["Egito"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Jacarezinho"] = {
		["Parent"] = {
			["Jacarezinho"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Fazendinha"] = {
		["Parent"] = {
			["Fazendinha"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["CidadeDeDeus"] = {
		["Parent"] = {
			["CidadeDeDeus"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["PU"] = {
		["Parent"] = {
			["PU"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["CaixaDagua"] = {
		["Parent"] = {
			["CaixaDagua"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Chapadao"] = {
		["Parent"] = {
			["Chapadao"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["CidadeAlta"] = {
		["Parent"] = {
			["CidadeAlta"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Vidigal"] = {
		["Parent"] = {
			["Vidigal"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["VJ"] = {
		["Parent"] = {
			["VJ"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["BaixaDoSapateiro"] = {
		["Parent"] = {
			["BaixaDoSapateiro"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Acari"] = {
		["Parent"] = {
			["Acari"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Serrinha"] = {
		["Parent"] = {
			["Serrinha"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["NovaHolanda"] = {
		["Parent"] = {
			["NovaHolanda"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Pedreira"] = {
		["Parent"] = {
			["Pedreira"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Manguinhos"] = {
		["Parent"] = {
			["Manguinhos"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Turano"] = {
		["Parent"] = {
			["Turano"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
--[[ 	["Antares"] = {
		["Parent"] = {
			["Antares"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	}, ]]
	["Dende"] = {
		["Parent"] = {
			["Dende"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["VilaKennedy"] = {
		["Parent"] = {
			["VilaKennedy"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
	["Rodo"] = {
		["Parent"] = {
			["Rodo"] = true
		},
		["Hierarchy"] = { "Dono","Frente","Gerente","Vapor","Soldado","Radinho" },
		["Service"] = {},
		["Type"] = "Favela"
	},
}