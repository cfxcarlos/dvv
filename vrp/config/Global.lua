-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
UsableF7 = true
Whitelisted = true
CombatLogMinutes = 3
Cooldown = 120000
SalarySeconds = 1800
BannedText = "Banidoo!"
ServerName = "Nova Moda RJ"
BackArenaPos = vec3(-1046.43,-474.55,36.78)
BackpackWeightDefault = 50
BackpackMaxWeightDefault = 300
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUNGER / THIRST
-----------------------------------------------------------------------------------------------------------------------------------------
ConsumeHunger = 1
ConsumeThirst = 1
CooldownHungerThrist = 300000
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAINTENANCE
-----------------------------------------------------------------------------------------------------------------------------------------
Maintenance = false
MaintenanceText = "O servidor está em manutenção."
MaintenanceLicenses = {
	["6925bc7945bd622113ecfd8a126ab90fb2e87a5d"] = true,
	["f3a54e6c8677e4918e4b167f05757745b8168647"] = true,	-- Taca sua licença aqui pra poder entrar em modo manutenção, caso n saiba achar ela ta na db da sua base junto com as infos do seu personage
	["c73cc6dc284f9020a91573be8754f807f57d427a"] = true,
	["ad5e96b26b883c36bbc202843dfd5be6b42ae3c6"] = true,
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARENA (Itens recebidos ao entrar na arena)
-----------------------------------------------------------------------------------------------------------------------------------------
ArenaItens = {
	["WEAPON_COMBATPISTOL"] = 1,
	["WEAPON_PISTOL_MK2"] = 1,
	["AMMO_9"] = 1000
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERITENS (Itens recebidos ao criar o personagem)
-----------------------------------------------------------------------------------------------------------------------------------------
MoneyBank = 50000
CharacterItens = {
	["gift"] = 1,
	["water"] = 20,
	["identity"] = 1,
	["hamburger"] = 20,
	["cellphone"] = 1,
	["dollars"] = 20000
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
GroupBlips = {
	["Polcia"] = true,
	["Pcerj"] = true,
	["Pmerj"] = true,
	["Bope"] = true,
	["PoliciaFederal"] = true,
	["Choque"] = true,
	["Recom"] = true,
	["Prf"] = true,
	["Hospital"] = true
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LANG
-----------------------------------------------------------------------------------------------------------------------------------------
Lang = {
	["Join"] = "Entrando no servidor...",
	["Connecting"] = "Conectando no servidor...",
	["Position"] = "Você é o %d/%d da fila, aguarde sua conexão com nossa cidade",
	["Error"] = "Conexão perdida com o servidor."
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUEUE
-----------------------------------------------------------------------------------------------------------------------------------------
Queue = {
	["List"] = {},
	["Players"] = {},
	["Counts"] = 0,
	["Connecting"] = {},
	["Threads"] = 0,
	["Max"] = 2048
}