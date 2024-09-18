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
Tunnel.bindInterface("admin",Creative)
vCLIENT = Tunnel.getInterface("admin")
vANIM = Tunnel.getInterface("animacoes")
vKEYBOARD = Tunnel.getInterface("keyboard")
vSKINSHOP = Tunnel.getInterface("skinshop")
tvRP = Tunnel.getInterface("VRP")



-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:DYNAMIC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:Dynamic")
AddEventHandler("admin:Dynamic", function(Mode, Source)
	local source = Source or source
	local Passport = vRP.Passport(source)
	if Passport then
		TriggerClientEvent("dynamic:closeSystem", source)
		if Mode == "wl" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID da Whitelist:", "Status: (0 inativa, 1 ativa)")
				if Keyboard then
					TriggerClientEvent("Notify", source, "verde", "Whitelist editada.", 5000, "Sucesso")
					vRP.Query("accounts/SetWhitelist", { Whitelist = Keyboard[2], id = Keyboard[1] })
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "rename" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Tertiary(source, "ID:", "Nome:", "Sobrenome:")
				if Keyboard then
					vRP.UpgradeNames(Keyboard[1], Keyboard[2], Keyboard[3])
					TriggerClientEvent("Notify", source, "verde", "Nome atualizado.", 5000, "Sucesso")
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "ugroups" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local Result = ""
					local Groups = vRP.Groups()
					local OtherPassport = Keyboard[1]
					for Permission, _ in pairs(Groups) do
						local Data = vRP.DataGroups(Permission)
						if Data[OtherPassport] then
							Result = Result .."<b>Permissão:</b> " ..Permission .. "<br><b>Nível:</b> " .. Data[OtherPassport] .. "<br>"
						end
					end
					if Result ~= "" then
						TriggerClientEvent("Notify", source, "azul", Result, 10000, "Grupos Pertencentes")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "clearinv" then
			--if vRP.HasGroup(Passport, "Admin") then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					vRP.ClearInventory(Keyboard[1])
					TriggerClientEvent("Notify", source, "verde", "Limpeza concluída.", 5000, "Sucesso")
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport ..
						"\n**Comando:** clearinv " .. Keyboard[1], 0xa3c846)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "gem" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Quantidade:")
				if Keyboard then
					local Amount = parseInt(Keyboard[2])
					local OtherPassport = parseInt(Keyboard[1])
					local Identity = vRP.Identity(OtherPassport)
					if Identity then
						TriggerClientEvent("Notify", source, "verde", "Gemas entregues.", 5000, "Sucesso")
						vRP.UpgradeGemstone(OtherPassport, Amount)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "blips" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				vRPC.BlipAdmin(source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "flash" then
			if vRP.HasGroup(Passport,"Admin",2) then
				vCLIENT.Flash(source)
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "god" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport .. "\n**Comando:** god " .. Keyboard[1],
						0xa3c846)

					local OtherPassport = parseInt(Keyboard[1])
					local ClosestPed = vRP.Source(OtherPassport)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPassport, 100)
						vRP.UpgradeHunger(OtherPassport, 100)
						vRP.DowngradeCough(OtherPassport, 100)
						vRP.DowngradeStress(OtherPassport, 100)
						vRP.Revive(ClosestPed, 200)

						TriggerClientEvent("paramedic:Reset", ClosestPed)

						vRPC.Destroy(ClosestPed)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "godall" then
			if vRP.HasGroup(Passport,"Admin",2) then
				local UsersList = vRP.Players()
				for k, v in pairs(UsersList) do
					local OtherPassport = parseInt(k)
					local ClosestPed = vRP.Source(OtherPassport)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPassport,100)
						vRP.UpgradeHunger(OtherPassport,100)
						vRP.DowngradeCough(OtherPassport,100)
						vRP.DowngradeStress(OtherPassport,100)
						vRP.Revive(ClosestPed,200)

						TriggerClientEvent("paramedic:Reset",ClosestPed)

						vRPC.Destroy(ClosestPed)

						TriggerClientEvent("Notify", ClosestPed, "default", "Você recebeu uma cura divina.", 5000)
					end

					TriggerClientEvent("Notify", source, "verde", "Você reviveu todos onlines.", 5000, "Sucesso")
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000, "Atenção")
			end
		elseif Mode == "armour" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport .. "\n**Comando:** armour " ..
						Keyboard[1], 0xa3c846)

					local OtherPassport = parseInt(Keyboard[1])
					local ClosestPed = vRP.Source(OtherPassport)
					if ClosestPed then
						vRP.SetArmour(ClosestPed, 100)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "item" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "Nome do Item:", "Quantidade:")
				if Keyboard then
					if itemBody(Keyboard[1]) ~= nil then
						vRP.GenerateItem(Passport, Keyboard[1], parseInt(Keyboard[2]), true)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", "Atenção",5000)
			end
		elseif Mode == "item2" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Tertiary(source, "ID:", "Nome do Item:", "Quantidade:")
				if Keyboard then
					if itemBody(Keyboard[2]) ~= nil then
						vRP.GenerateItem(parseInt(Keyboard[1]), Keyboard[2], parseInt(Keyboard[3]), true)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "itemall" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "Nome do Item:", "Quantidade:")
				if Keyboard then
					if itemBody(Keyboard[1]) ~= nil then
						local List = vRP.Players()
						for AllPlayers, _ in pairs(List) do
							async(function()
								vRP.GenerateItem(AllPlayers, Keyboard[1], parseInt(Keyboard[2]), true)
							end)
						end
						TriggerClientEvent("Notify", source, "verde", "Envio concluído.", 5000, "Sucesso")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "delete" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					if vRP.Request(source, "Deletar Conta", "Você tem certeza?") then
						local OtherPassport = parseInt(Keyboard[1])
						vRP.Query("characters/Delete", { Passport = OtherPassport })
						TriggerClientEvent("Notify", source, "verde", "Personagem <b>" .. OtherPassport .."</b> deletado.", 5000, "Sucesso")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "skin" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Skin:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						vRPC.Skin(ClosestPed, Keyboard[2])
						vRP.SkinCharacter(parseInt(Keyboard[1]), Keyboard[2])
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** skin " .. Keyboard[1] .. " " .. Keyboard
							[2], 0xa3c846)
						TriggerClientEvent("Notify", source, "verde",
							"Skin <b>" .. Keyboard[2] .. "</b> setada no ID " .. parseInt(Keyboard[1]) .. ".", "Sucesso",
							5000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "resetskin" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						local OtherPassport = parseInt(Keyboard[1])
						local Identity = vRP.Identity(OtherPassport)
						if Identity then
							if Identity["Sex"] == "M" then
								vRPC.Skin(ClosestPed, "mp_m_freemode_01")
								vRP.SkinCharacter(parseInt(Keyboard[1]), "mp_m_freemode_01")
							elseif Identity["Sex"] == "F" then
								vRPC.Skin(ClosestPed, "mp_f_freemode_01")
								vRP.SkinCharacter(parseInt(Keyboard[1]), "mp_f_freemode_01")
							end

							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " .. Passport .. "\n**Comando:** resetskin " .. Keyboard[1], 0xa3c846)
							TriggerClientEvent("Notify", source, "verde",
								"Skin do ID " .. parseInt(Keyboard[1]) .. " foi resetada.", 5000, "Sucesso")
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "nc" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				vRPC.noClip(source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "kick" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local OtherSource = vRP.Source(Keyboard[1])
					if OtherSource then
						TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" .. Keyboard[1] .. "</b> expulso.",
							5000, "Sucesso")
						exports["vrp"]:Embed("Admin", "**Passaporte:** " .. Passport ..
							"\n**Comando:** kick " .. Keyboard[1], 0xa3c846)
						vRP.Kick(OtherSource, "Expulso da cidade.")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "ban" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Dias:")
				if Keyboard then
					local Days = parseInt(Keyboard[2])
					local OtherPassport = parseInt(Keyboard[1])
					local Identity = vRP.Identity(OtherPassport)
					if Identity then
						local OtherSource = vRP.Source(OtherPassport)
						if OtherSource then
							local Token = GetPlayerTokens(OtherSource)
							for k, v in pairs(Token) do
								vRP.Kick(OtherPassport, "Banido.")
								vRP.Query("banneds/InsertBanned",
									{ License = Identity["License"], Token = v, Time = Days })
							end

							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " .. Passport .. "\n**Comando:** ban " .. Keyboard[1] ..
								" " .. Keyboard[2], 0xa3c846)
							TriggerClientEvent("Notify", source, "amarelo",
								"Passaporte <b>" .. OtherPassport .. "</b> banido por <b>" .. Days .. "</b> dias.",
								5000, "Atenção")
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "unban" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local OtherPassport = parseInt(Keyboard[1])
					local Identity = vRP.Identity(OtherPassport)
					if Identity then
						vRP.Query("banneds/RemoveBanned", { License = Identity["License"] })
						exports["vrp"]:Embed("Admin", "**Passaporte:** " ..
							Passport .. "\n**Comando:** unban " .. Keyboard[1], 0xa3c846)
						TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" ..
							OtherPassport .. "</b> desbanido.", 5000, "Sucesso")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "timeset" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Tertiary(source, "Hora:", "Minuto:", "Clima:")
				if Keyboard then
					GlobalState["Hours"] = parseInt(Keyboard[1])
					GlobalState["Minutes"] = parseInt(Keyboard[2])
					GlobalState["Weather"] = Keyboard[3]
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "temperatureset" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Primary(source, "Temperatura:")
				if Keyboard then
					GlobalState["Temperature"] = parseInt(Keyboard[1])
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "blackoutset" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				if GlobalState["Blackout"] then
					GlobalState["Blackout"] = false
					TriggerClientEvent("Notify", source, "amarelo", "Modo blackout desativado.", 5000, "Atenção")
				else
					GlobalState["Blackout"] = true
					TriggerClientEvent("Notify", source, "verde", "Modo blackout ativado.", 5000, "Sucesso")
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "cds" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				local Heading = GetEntityHeading(Ped)

				vKEYBOARD.Copy(source, "Cordenadas:",
					mathLength(Coords["x"]) ..
					"," .. mathLength(Coords["y"]) .. "," .. mathLength(Coords["z"]) .. "," .. mathLength(Heading))
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "tpcds" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = vKEYBOARD.Primary(source, "Coordenada:")
				if Keyboard then
					local Split = splitString(Keyboard[1], ",")
					vRP.Teleport(source, Split[1] or 0, Split[2] or 0, Split[3] or 0)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "group" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Tertiary(source, "ID:", "Grupo:", "Hierarquia:")
				if Keyboard then
					local Level = Keyboard[3]
					local Permission = Keyboard[2]
					local OtherPassport = Keyboard[1]

					if vRP.CheckGroup(Permission) then
						if vRP.GroupType(Permission) == "Work" then
							if not vRP.GetUserType(OtherPassport, "Work") then
								exports["vrp"]:Embed("Admin",
									"**Passaporte:** " ..
									Passport .. "\n**Comando:** group " .. OtherPassport .. " " .. Permission .. " " .. Level,
									0xa3c846)
								TriggerClientEvent("Notify", source, "verde",
									"Adicionado <b>" .. Permission .. "</b> ao passaporte <b>" .. OtherPassport .. "</b>.",
									5000, "Sucesso")
								vRP.SetPermission(OtherPassport, Permission, Level)
								
								-- if exports["painel"]:Buff(Permission) > 0 then
								-- 	vRP.SetPermission(OtherPassport, "Buff")
								-- end
							else
								TriggerClientEvent("Notify", source, "amarelo", "O passaporte já pertence a outro grupo.",
									5000, "Atenção")
							end
						else
							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " ..
								Passport .. "\n**Comando:** group " .. OtherPassport .. " " .. Permission .. " " .. Level,
								0xa3c846)
							TriggerClientEvent("Notify", source, "verde",
								"Adicionado <b>" .. Permission .. "</b> ao passaporte <b>" .. OtherPassport .. "</b>.",
								5000, "Sucesso")
							vRP.SetPermission(OtherPassport, Permission, Level)
						end
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "ungroup" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Grupo:")
				if Keyboard and vRP.CheckGroup(Keyboard[2]) then
					TriggerClientEvent("Notify", source, "verde",
						"Removido <b>" .. Keyboard[2] .. "</b> ao passaporte <b>" .. Keyboard[1] .. "</b>.", "Sucesso",
						5000)
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " .. Passport .. "\n**Comando:** ungroup " .. Keyboard[1] .. " " .. Keyboard[2],
						0xa3c846)
					vRP.RemovePermission(Keyboard[1], Keyboard[2])
					if vRP.GroupType(Keyboard[2]) == "Work" then
						vRP.RemovePermission(Keyboard[1], "Buff")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "tptome" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						local Ped = GetPlayerPed(source)
						local Coords = GetEntityCoords(Ped)

						vRP.Teleport(ClosestPed, Coords["x"], Coords["y"], Coords["z"])
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "tpto" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local ClosestPed = vRP.Source(Keyboard[1])
					if ClosestPed then
						local Ped = GetPlayerPed(ClosestPed)
						local Coords = GetEntityCoords(Ped)
						vRP.Teleport(source, Coords["x"], Coords["y"], Coords["z"])
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "tpway" then
			if vRP.HasGroup(Passport,"Admin",2) then
				vCLIENT.TeleportWay(source)
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "tuning" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				TriggerClientEvent("admin:Tuning", source)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "fix" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Vehicle, Network, Plate = vRPC.VehicleList(source, 10)
				if Vehicle then
					local Players = vRPC.Players(source)
					for _, v in pairs(Players) do
						async(function()
							TriggerClientEvent("inventory:repairAdmin", v, Network, Plate)
						end)
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "fuel" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				if not vRPC.InsideVehicle(source) then
					local Vehicle, Network, Plate = vRPC.VehicleList(source, 10)
					if Vehicle then
						local Keyboard = vKEYBOARD.Primary(source, "Litros:")
						if Keyboard then
							local Networked = NetworkGetEntityFromNetworkId(Network)
							Entity(Networked)["state"]:set("Fuel", Keyboard[1], true)
							TriggerClientEvent("Notify", source, "verde",
								"Veículo com <b>" .. parseInt(Keyboard[1]) .. "% de Gasolina</b>.", 5000, "Sucesso")
						end
					end
				else
					TriggerClientEvent("Notify", source, "amarelo", "Você precisa sair do veículo.", 5000, "Atenção")
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "lockpick" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Vehicle, Network, Plate, Model, Class = vRPC.VehicleList(source, 5)
				if Vehicle then
					local Networked = NetworkGetEntityFromNetworkId(Network)

					if not vRP.PassportPlate(Plate) then
						Entity(Networked)["state"]:set("Fuel", 100, true)
						Entity(Networked)["state"]:set("Nitro", 0, true)
						SetVehicleDoorsLocked(Networked, 1)
					else
						SetVehicleDoorsLocked(Networked, 1)
					end

					TriggerEvent("plateEveryone", Plate)
					TriggerEvent("platePlayers", Plate, Passport)

					TriggerClientEvent("Notify",source,"sucesso","Você destrancou o veículo.","Sucesso",5000)

					exports["vrp"]:Embed("Admin","**Passaporte:** "..Passport.."\n**Comando:** lockpick",0xa3c846)
				else
					TriggerClientEvent("Notify",source,"aviso","Sem veículos próximos.","Atenção",5000)
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "limparea" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				IMPERIO_CLIENT.Limparea(source, Coords)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "hash" then
			if vRP.HasGroup(Passport, "Admin") then
				local Vehicle = vRPC.VehicleHash(source)
				if Vehicle then
					vKEYBOARD.Copy(source, "Hash do veículo:", Vehicle)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "setbank" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Quantidade:")
				if Keyboard then
					vRP.GiveBank(Keyboard[1], Keyboard[2])
					TriggerClientEvent("Notify", source, "verde", "Envio concluído.", 5000, "Sucesso")
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "rembank" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Quantidade:")
				if Keyboard then
					vRP.RemoveBank(Keyboard[1], Keyboard[2])
					TriggerClientEvent("Notify", source, "verde", "Remoção concluída.", 5000, "Sucesso")
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "players" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				TriggerClientEvent("Notify", source, "azul", "<b>Jogadores Conectados:</b> " .. GetNumPlayerIndices(),5000)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "playersconnected" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local List = vRP.Players()
				local Players = ""
				for k, v in pairs(List) do
					local Identity = vRP.Identity(k)
					Players = Players .. k .. ": " .. Identity.name .. " ".. Identity.name2 .. "\n"
				end
				vKEYBOARD.Copy(source, "Players Conectados:", Players)
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "announce" then
			if vRP.HasGroup(Passport, "Admin", 3) then
				local Keyboard = vKEYBOARD.Quadruple(source, "Tema:", "Anúncio:", "Título:", "Segundos:")
				if Keyboard then
					TriggerClientEvent("Notify", -1, Keyboard[1], Keyboard[2], Keyboard[3], Keyboard[4] * 1000)
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " ..
						Passport ..
						"\n**Comando:** announce " ..
						Keyboard[1] .. " " .. Keyboard[2] .. " " .. Keyboard[3] .. " " .. Keyboard[4] * 1000, 0xa3c846)
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "setcar" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Veículo:")
				if Keyboard and Keyboard[1] and Keyboard[2] then
					if VehicleExist(Keyboard[2]) then
						local Consult = vRP.Query("vehicles/selectVehicles",
							{ Passport = Keyboard[1], vehicle = Keyboard[2] })
						if Consult[1] then
							TriggerClientEvent("Notify", source, "amarelo",
								"O passaporte <b>" .. Keyboard[1] .. "</b> já possui o veículo <b>" ..
								Keyboard[2] .. "</b>", 5000, "Atenção")
						else
							exports["vrp"]:Embed("Admin",
								"**Passaporte:** " .. Passport .. "\n**Comando:** setcar " ..
								Keyboard[1] .. " " .. Keyboard[2], 0xa3c846)
							vRP.Query("vehicles/addVehicles",
								{
									Passport = Keyboard[1],
									vehicle = Keyboard[2],
									plate = vRP.GeneratePlate(),
									work = "false"
								})
							TriggerClientEvent("Notify", source, "verde",
								"O veículo <b>" ..
								Keyboard[2] .. "</b> foi adicionado para o passaporte <b>" .. Keyboard[1] .. "<b>.",
								5000, "Sucesso")
						end
					else
						TriggerClientEvent("Notify", source, "amarelo", "Esse carro não existe.", 5000, "Atenção")
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "remcar" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Secondary(source, "ID:", "Veículo:")
				if Keyboard then
					exports["vrp"]:Embed("Admin",
						"**Passaporte:** " .. Passport .. "\n**Comando:** remcar " .. Keyboard[1] .. " " .. Keyboard[2],
						0xa3c846)
					TriggerClientEvent("Notify", source, "verde", "Veículo removido com sucesso.", 5000, "Sucesso")
					vRP.Query("vehicles/removeVehicles", { Passport = Keyboard[1], vehicle = Keyboard[2] })
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "clearprison" then
			if vRP.HasGroup(Passport, "Admin", 2) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					local OtherPlayer = vRP.Source(Keyboard[1])
					if OtherPlayer then
						exports["vrp"]:Embed("Admin",
							"**Passaporte:** " .. Passport .. "\n**Comando:** clearprison " .. Keyboard[1], 0xa3c846)
						exports["markers"]:Exit(OtherPlayer)
						TriggerClientEvent("Notify", source, "verde", "Prisão zerada.", 5000, "Sucesso")
						vRP.Query("characters/CleanPrison", { Passport = Keyboard[1] })
						Player(OtherPlayer)["state"]["Prison"] = false
					end
				end
			else
				TriggerClientEvent("Notify", source, "amarelo", "Você não tem permissões para isso.", 5000, "Atenção")
			end
		elseif Mode == "ney" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.Primary(source,"ID:")
				if Keyboard then
					vCLIENT.neyMar(Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Derrubou o #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "voar" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.Primary(source,"ID:")
				if Keyboard then
					vCLIENT.makeFly(Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Mandou o #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." Para as Alturas"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "explodir" then
			if vRP.HasGroup(Passport, "Admin", 1) then
				local Keyboard = vKEYBOARD.Primary(source, "ID:")
				if Keyboard then
					TriggerClientEvent("Hensa:Explodir", Keyboard[1])
					TriggerClientEvent("Notify", source, "azul", "Você Explodiu o #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1]).." com Sucesso", 5000)
				end
			else
				TriggerClientEvent("Notify", source, "aviso", "Você não tem permissões para isso.", 5000)
			end	
		elseif Mode == "fogo" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.Primary(source,"ID:")
				if Keyboard then
					TriggerClientEvent("Hensa:Fogo",Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Colocou Fogo no #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "gelo" then
			if vRP.HasGroup(Passport,"Admin",1) then
				local Keyboard = vKEYBOARD.Primary(source,"ID:")
				if Keyboard then
					TriggerClientEvent("Hensa:Congelar",Keyboard[1])
					TriggerClientEvent("Notify",source,"azul","Você Congelou #"..Keyboard[1].." - "..vRP.FullName(Keyboard[1].." com Sucesso"),5000)
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.",5000)
			end
		elseif Mode == "driverlicense" then
			if vRP.HasGroup(Passport,"Admin") then
				local Keyboard = vKEYBOARD.Secondary(source,"ID:","(0 Zerada, 1 Liberada, 2 Apreendida)")
				if Keyboard then
					exports["vrp"]:Embed("Admin","**Passaporte:** "..Passport.."\n**Comando:** driverlicense "..Keyboard[1].." "..Keyboard[2],0xa3c846)
					TriggerClientEvent("Notify",source,"sucesso","CNH atualizada.","Sucesso",5000)
					vRP.UpdateDriverLicense(Keyboard[1],Keyboard[2])
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "clearprison" then
			if vRP.HasGroup(Passport,"Admin",2) then
				local Keyboard = vKEYBOARD.Primary(source,"ID:")
				if Keyboard then
					local OtherPlayer = vRP.Source(Keyboard[1])
					if OtherPlayer then
						exports["vrp"]:Embed("Admin","**Passaporte:** "..Passport.."\n**Comando:** clearprison "..Keyboard[1],0xa3c846)
						TriggerClientEvent("Notify",source,"sucesso","Prisão zerada.","Sucesso",5000)
						Player(OtherPlayer)["state"]["Prison"] = false
						vRP.ClearPrison(Keyboard[1])
					end
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end 
		elseif Mode == "debug" then
			if vRP.HasGroup(Passport,"Admin",2) then
				TriggerClientEvent("admin:ToggleDebug", source)
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "magneto" then
			if vRP.HasGroup(Passport,"Admin",2) then
				TriggerClientEvent("admin:ToggleMagneto", source)
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "vehiclespeed" then
			if vRP.HasGroup(Passport,"Admin",2) then
				local Keyboard = vKEYBOARD.Primary(source,"Velocidade:")
				if Keyboard then
					TriggerClientEvent("admin:ChangeVehicleSpeed", source, tonumber(Keyboard[1]))
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "tyreburst" then
			if vRP.HasGroup(Passport,"Admin",2) then
				local Keyboard = vKEYBOARD.Primary(source,"Número do Pneu:")
				if Keyboard then
					TriggerClientEvent("admin:TyreBurst", source, tonumber(Keyboard[1]))
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "createlightning" then
			if vRP.HasGroup(Passport,"Admin",2) then
				local Keyboard = vKEYBOARD.Primary(source,"Número:")
				if Keyboard then
					local UsersList = vRP.Players()
					for k, v in pairs(UsersList) do
						local OtherPassport = parseInt(k)
						local OtherSource = vRP.Source(OtherPassport)
						if OtherSource then
							TriggerClientEvent("admin:LightningThunder", OtherSource, tonumber(Keyboard[1]))
						end
					end
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "changemode" then
			if vRP.HasGroup(Passport,"Admin",2) then
				local Keyboard = vKEYBOARD.Secondary(source,"ID:","(Legal / Ilegal)")
				if Keyboard then
					exports["vrp"]:Embed("Admin","**Passaporte:** "..Passport.."\n**Comando:** changemode "..Keyboard[1].." "..Keyboard[2],0xa3c846)
					TriggerClientEvent("Notify",source,"sucesso","Modo de atividade modificado.","Sucesso",5000)
					vRP.ChangeMode(Keyboard[1], Keyboard[2])
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Você não tem permissões para isso.","Atenção",5000)
			end
		elseif Mode == "stats" then
			local _, TotalPolicia = vRP.NumPermission("Policia")
			local _, TotalParamedico = vRP.NumPermission("Hospital")
			local _, TotalBombeiro = vRP.NumPermission("Bombeiro")

			TriggerClientEvent("Notify", source, "azul",
				"Atualmente <b>" ..
				parseInt(GetNumPlayerIndices()) ..
				"</b> pessoas conectadas.<br><br>Atualmente <b>" ..
				parseInt(TotalPolicia) ..
				" Policiais</b> conectados.<br>Atualmente <b>" ..
				parseInt(TotalParamedico) .. " Paramédicos</b> conectados.", ServerName, 10000)
		elseif Mode == "statsPolicia" then
			local _, TotalPolicia = vRP.NumPermission("Policia")
			TriggerClientEvent("Notify", source, "policia",
				"Existem <b>" .. parseInt(TotalPolicia) .. "</b> companheiros com você.", "Polícia", 5000)
		elseif Mode == "statsParamedico" then
			local _, TotalParamedico = vRP.NumPermission("Hospital")
			TriggerClientEvent("Notify", source, "hospital",
				"Existem <b>" .. parseInt(TotalParamedico) .. "</b> companheiros com você.", "Paramédico", 5000)
		elseif Mode == "statsBombeiro" then
				local _, TotalBombeiro = vRP.NumPermission("Bombeiro")
				TriggerClientEvent("Notify", source, "hospital","Existem <b>" .. parseInt(TotalBombeiro) .. "</b> companheiros com você.", "Paramédico", 5000)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("pon",function(source,args,rawCommand)
    local user_id = vRP.Passport(source)
    if vRP.HasGroup(user_id, "Admin",9) then
        local users = vRP.Players()
        local players = ""
        local quantidade = 0
        for k,v in pairs(users) do
            if k ~= #users then
                players = players..", "
            end
            players = players..k
            quantidade = quantidade + 1
        end
        TriggerClientEvent("Notify",source,"amarelo","TOTAL ONLINE : <b>"..quantidade.."</b><br>ID's ONLINE : <b>"..players.."</b>",5000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ligar",function(source,Message,rawCommand)
    local user_id = vRP.Passport(source)
    if vRP.HasGroup(user_id, "Admin",1) then
		if Message[1] and vRP.Source(parseInt(Message[1])) then
            local OtherIdentity = vRP.Identity(parseInt(Message[1]))
			TriggerClientEvent("admin:callPlayer",source,OtherIdentity.phone)
		end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALL
-----------------------------------------------------------------------------------------------------------------------------------------
--[[ RegisterCommand("calladm",function(source,Message)
	local Passport = vRP.Passport(source)
	local coords = vCLIENT.GetPostions(source)
	if not Message[1] or (Message[1] == "admin" or Message[1] == "staff" or Message[1] == "adm" or Message[1] == "god") then
		local Keyboard = vKEYBOARD.Primary(source,"adm:")
		if Keyboard then 
			local Answered = false
			local Identity = vRP.Identity(Passport)
			local Services,Admin = vRP.NumPermission("Admin",7)
			for Passports,Sources in pairs(Services) do
				async(function()
					vRPC.PlaySound(Sources,"Out_Of_Area","DLC_Lowrider_Relay_Race_Sounds")
					TriggerClientEvent("Notify",Sources,"azul",Keyboard[1],8000,"[STAFF] Enviado pelo Passaporte: "..Passport)
					if vRP.Request(Sources,"Chamado Staff","Aceitar o chamado de <b>"..Identity["name"].." "..Identity["name2"].."</b>?") then
						if not Answered then
							Answered = true
							TriggerClientEvent("NotifyPush",Sources,{ phone = Identity["phone"], name = Identity["name"].." "..Identity["name2"] .. "  " .. Identity["phone"], title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"], criminal = "STAFF", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
							TriggerClientEvent("Notify",source,"azul","Chamado atendido por <b>"..vRP.Identity(Passports)["name"].." "..vRP.Identity(Passports)["name2"].."</b>, aguarde no local.",8000)
							vRPC.PlaySound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
						else
							TriggerClientEvent("Notify",Sources,"azul","Chamado ja foi atendido por outra pessoa.",8000)
							vRPC.PlaySound(Sources,"CHECKPOINT_MISSED","HUD_MINI_GAME_SOUNDSET")
						end
					end
				end)
			end
		end
	end
end) ]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDVEHS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("addveh",function(source,Message)
	local Passport = vRP.Passport(source)
    if vRP.HasGroup(Passport,"Admin",1) then
        if Message[1] and Message[2] then
			local OtherPlayer = vRP.Source(parseInt(Message[2]))
            local OtherIdentity = vRP.Identity(parseInt(Message[2]))
            if OtherIdentity and vRP.Request(source,"Deseja adicionar o carro <b>"..VehicleName(Message[1]).."</b> para o Passaporte: <b>"..parseInt(Message[2]).." "..OtherIdentity.name.." "..OtherIdentity.name2.."</b> ?","Sim ou Não") then
				if VehicleMode(Message[1]) == "Rental" then
					vRP.Query("vehicles/rentalVehicles",{ Passport = parseInt(Message[2]), vehicle = Message[1], plate = vRP.GeneratePlate(), work = "false" })
				else
					vRP.Query("vehicles/addVehicles",{ Passport = parseInt(Message[2]), vehicle = Message[1], plate = vRP.GeneratePlate(), work = "false" })
				end
				TriggerClientEvent("Notify",source,"verde", "Você adicionou o veículo <b>"..VehicleName(Message[1]).."</b> para o Passaporte: <b>"..parseInt(Message[2]).."</b>.", 5000)
                TriggerClientEvent("Notify",OtherPlayer,"verde", "O veículo <b>"..VehicleName(Message[1]).."</b> foi adicionado na sua garagem.", 5000)
				TriggerEvent("Discord","AddVeh","**Passaporte:** "..Passport.."\n**Veículo:** "..VehicleName(Message[1]).."\n**Para:** "..Message[2],3553599)
			end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMVEHS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("remveh",function(source,Message)
	local Passport = vRP.Passport(source)
    if vRP.HasGroup(Passport,"Admin",1) then
        if Message[1] and Message[2] then
            local OtherPlayer = vRP.Source(parseInt(Message[2]))
            local OtherIdentity = vRP.Identity(parseInt(Message[2]))
            if vRP.Request(source,"Deseja retirar o veículo <b>"..VehicleName(Message[1]).."</b> do Passaporte: <b>"..parseInt(Message[2]).." "..OtherIdentity.name.." "..OtherIdentity.name2.."</b> ?","Sim","Não") then
                vRP.Query("vehicles/removeVehicles",{ Passport = parseInt(Message[2]), vehicle = Message[1] })
                TriggerClientEvent("Notify",source,"verde", "Você removeu o veículo <b>"..VehicleName(Message[1]).."</b> do Passaporte: <b>"..parseInt(Message[2]).."</b>.", 5000)
                TriggerClientEvent("Notify",OtherPlayer,"vermelho", "O veículo <b>"..VehicleName(Message[1]).."</b> foi removido da sua garagem.", 5000)
				TriggerEvent("Discord","RemVeh","**Passaporte:** "..Passport.."\n**Veículo:** "..VehicleName(Message[1]).."\n**Para:** "..Message[2],3553599)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UGROUPS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ugroups",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and parseInt(Message[1]) > 0 and vRP.HasGroup(Passport,"Admin",9) then
		local Messages = ""
		local Groups = vRP.Groups()
		local OtherPassport = Message[1]
		for Permission,_ in pairs(Groups) do
			local Data = vRP.DataGroups(Permission)
			if Data[OtherPassport] then
				Messages = Messages.."<b>Permissão:</b> "..Permission.."<br><b>Nível:</b> "..Data[OtherPassport].."<br>"
			end
		end
		if Messages ~= "" then
			TriggerClientEvent("Notify",source,"verde",Messages,10000,"Grupos Pertencentes")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("vips",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport,"Admin",1) then
		local Messages = ""
		local Groups = vRP.Groups()
		for Permission in pairs(Groups["Premium"]["Parent"]) do
			local Data = vRP.DataGroups(Permission)
			for OtherPassport in pairs(Data) do
				Messages = Messages..Permission.." #"..OtherPassport.."<br>"
			end
		end
		if Messages ~= "" then
			TriggerClientEvent("Notify",source,"verde",Messages,10000,"Grupos Pertencentes")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("premiumveh",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport,"Admin",1) then
		local Messages = ""
		local Result = exports["oxmysql"]:query_async([[
			SELECT vehicle,Passport FROM vehicles 
			WHERE work = 'false' AND rental > UNIX_TIMESTAMP() + 2592000
		]])
		for Index in pairs(Result) do
			Messages = Messages..VehicleName(Result[Index].vehicle).." #"..Result[Index].Passport.."<br>"
		end
		if Messages ~= "" then
			TriggerClientEvent("Notify",source,"verde",Messages,10000,"Veiculo Vips")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- USOURCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("usource",function(source,Message)
	local Passport = vRP.Passport(source)
	local OtherSource = parseInt(Message[1])
	if Passport and OtherSource and OtherSource > 0 and vRP.Passport(OtherSource) and vRP.HasGroup(Passport,"Admin",1) then
		TriggerClientEvent("Notify",source,"azul","<b>Passaporte:</b> "..vRP.Passport(OtherSource),5000,"Informações")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("experience",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1) and parseInt(Message[2]) > 0 then
			vRP.PutExperience(Passport,Message[1],parseInt(Message[2]))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARINV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("clearinv",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3) and parseInt(Message[1]) > 0 then
			TriggerClientEvent("Notify",source,"verde","Limpeza concluída.",5000)
			vRP.ClearInventory(Message[1])
			TriggerEvent("Discord","ClearInv","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARCHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("clearchest",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3) and Message[1] then
			local Consult = vRP.Query("chests/GetChests",{ name = Message[1] })
			if Consult[1] then
				TriggerClientEvent("Notify",source,"verde","Limpeza concluída.",5000)
				vRP.SetSrvData("Chest:"..Message[1],{},true)
				TriggerEvent("Discord","ClearChest","**Passaporte:** "..Passport.."\n**Chest:** "..Message[2],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DIAMOND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("gemstone",function(source,Message)
	local Passport = vRP.Passport(source)
	local Amount = parseInt(Message[2])
	if Passport and Amount > 0 then
		local OtherPassport = parseInt(Message[1])
		if vRP.HasGroup(Passport,"Admin",1) then
			vRP.UpgradeGemstone(OtherPassport,Amount)
			TriggerClientEvent("Notify",source,"Sucesso","Diamantes entregues.","verde",5000)
			TriggerEvent("Discord","GemStone","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport.."\n**Diamantes:** "..Amount,3092790)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
local Blips = {}
RegisterCommand("blips",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",9)    then
			local Text = ""
			if not Blips[Passport] then
				Blips[Passport] = true
				Text = "Ativado"
			else
				Blips[Passport] = nil
				Text = "Desativado"
			end
			vRPC.BlipAdmin(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("god",function(source,Message)
	local Passport = vRP.Passport(source)
	local List = vRP.Players()
	local OtherPlayer = parseInt(Message[1])
	local text = parseInt(Message[1])
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",7)  then
			if Message[1] then
				if Message[1] == "all" then
					local Text = ""
					for OtherPlayer,OtherSource in pairs(List) do
						async(function()
							vRP.UpgradeThirst(OtherPlayer,100)
							vRP.UpgradeHunger(OtherPlayer,100)
							vRP.DowngradeStress(OtherPlayer,100)
							vRP.Revive(OtherSource,200)
							TriggerClientEvent("paramedic:Reset",OtherSource)
							if Text == "" then
								Text = OtherPlayer
							else
								Text = Text..", "..OtherPlayer
							end
						end)
					end
					TriggerEvent("Discord","Revive","**Passaporte:** "..Passport.."\n**Para:** ALL",3553599)
				else
					local ClosestPed = vRP.Source(OtherPlayer)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPlayer,100)
						vRP.UpgradeHunger(OtherPlayer,100)
						vRP.DowngradeStress(OtherPlayer,100)
						vRP.Revive(ClosestPed,200)
						TriggerClientEvent("hud:Active",OtherPlayer,true)
						TriggerClientEvent("paramedic:Reset",ClosestPed)
						TriggerEvent("Discord","Revive","**Passaporte:** "..Passport.."\n**Para:** "..OtherPlayer,3553599)
					end
				end
			else
				vRP.Revive(source,200)
				vRP.UpgradeThirst(Passport,100)
				vRP.UpgradeHunger(Passport,100)
				vRP.DowngradeStress(Passport,100)
				TriggerClientEvent("hud:Active",Passport,true)
				TriggerClientEvent("paramedic:Reset",source)
				vRPC.removeObjects(source)
				TriggerEvent("Discord","Revive","**Passaporte:** "..Passport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GODA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("godall",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",5)  then
			local Range = parseInt(Message[1])
			if Range then
				local Text = ""
				local Players = vRPC.ClosestPeds(source,Range)
				for _,v in pairs(Players) do
					async(function()
						local OtherPlayer = vRP.Passport(v)
						vRP.UpgradeThirst(OtherPlayer,100)
						vRP.UpgradeHunger(OtherPlayer,100)
						vRP.DowngradeStress(OtherPlayer,100)
						vRP.Revive(v,200)
						TriggerClientEvent("hud:Active",OtherPlayer,true)
						TriggerClientEvent("paramedic:Reset",v)
						if Text == "" then
							Text = OtherPlayer
						else
							Text = Text..", "..OtherPlayer
						end
					end)
				end
				TriggerEvent("Discord","ReviveAll","**Passaporte:** "..Passport.."\n**Para:** "..Text,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('money',function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",1)   then
			if Message[1] then
				local Amount = parseInt(Message[1])
				vRP.GenerateItem(Passport,"dollars",Amount,true)
				TriggerEvent("Discord","Dollars","**Passaporte:** "..Passport.."\n**Item:** "..Amount.."x "..itemName("dollars"),3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("item",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",3)   then
			if Message[1] and Message[2] and itemBody(Message[1]) ~= nil then
				vRP.GenerateItem(Passport,Message[1],Message[2],true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
				TriggerEvent("Discord","GiveItem","**Passaporte:** "..Passport.."\n**Item:** "..Message[2].."x "..itemName(Message[1]),3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("delete",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] then
		if  vRP.HasGroup(Passport,"Admin",2)   then
			local OtherPassport = parseInt(Message[1])
			if OtherPassport > 0 then
				vRP.Query("characters/removeCharacter",{ id = OtherPassport })
				TriggerClientEvent("Notify",source,"verde","Personagem <b>"..OtherPassport.."</b> deletado.",5000)
				TriggerEvent("Discord","RemoveCharacter","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NC
-----------------------------------------------------------------------------------------------------------------------------------------
local Noclip = {}
RegisterCommand("nc",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",9) then
			local Text = ""
			if not Noclip[Passport] then
				Noclip[Passport] = true
				Text = "Ativado"
			else
				Noclip[Passport] = nil
				Text = "Desativado"
			end
			TriggerEvent("Discord","Noclip","**Passaporte:** "..Passport.."\n**Situação:** "..Text,3553599)
			vRPC.noClip(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kick",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3) and parseInt(Message[1]) > 0 then
			local OtherSource = vRP.Source(Message[1])
			if OtherSource then
				TriggerClientEvent("Notify",source,"amarelo","Passaporte <b>"..Message[1].."</b> expulso.",5000)
				vRP.Kick(OtherSource,"Expulso da cidade.")
				
				TriggerEvent("Discord","Kick","**kick**\n\n**Passaporte:** "..Passport.."\n**Expulsou Passaporte:** "..Message[1].." \n**Horário:** "..os.date("%H:%M:%S"),3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ban",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",6) and parseInt(Message[1]) > 0 then
			local Days = parseInt(Message[2]) > 0 or 360
			local OtherPassport = parseInt(Message[1])
			local Identity = vRP.Identity(OtherPassport)
			if Identity then
				vRP.Query("banneds/InsertBanned",{ license = Identity["license"], time = Days })
				TriggerClientEvent("Notify",source,"amarelo","Passaporte <b>"..OtherPassport.."</b> banido por <b>"..Days.."</b> dias.",5000)
				TriggerEvent("Discord","Banned","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport.."\n**Tempo:** "..Days.." dias",3553599)
				local OtherSource = vRP.Source(OtherPassport)
				if OtherSource then
					vRP.Kick(OtherSource,"Banido.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNBAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("unban",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",6) and parseInt(Message[1]) > 0 then
			local OtherPassport = parseInt(Message[1])
			local Identity = vRP.Identity(OtherPassport)
			if Identity then
				vRP.Query("banneds/RemoveBanned",{ license = Identity["license"] })
				TriggerClientEvent("Notify",source,"verde","Passaporte <b>"..OtherPassport.."</b> desbanido.",5000)
				TriggerEvent("Discord","UnBanned","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("wl",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",7) and parseInt(Message[1]) > 0 then
			TriggerClientEvent("Notify",source,"verde","TOKEN: <b>"..Message[1].."</b> Liberado <b>",5000)
			vRP.Query("accounts/updateWhitelist",{ id = parseInt(Message[1]), whitelist = 1 })
			TriggerEvent("Discord","WhiteList","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("unwl",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",7) then
			vRP.Query("accounts/updateWhitelist",{ id = parseInt(Message[1]), whitelist = 0 })
			TriggerEvent("Discord","UnWhiteList","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpcds",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",3)   then
			local Keyboard = vKEYBOARD.Primary(source,"Coordenadas:")
			if Keyboard then
				local Split = splitString(Keyboard[1],",")
				vRP.Teleport(source,tonumber(Split[1] or 0),tonumber(Split[2] or 0),tonumber(Split[3] or 0))
				TriggerEvent("Discord","Tpcds","**Passaporte:** "..Passport.."\n**Cds:** "..Split[1] or 0,Split[2] or 0,Split[3] or 0,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cds",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin", 1 or 2 or 3)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local heading = GetEntityHeading(Ped)
			vKEYBOARD.Copy(source,"Coordenadas:",mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"])..","..mathLength(heading))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cds2",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin", 1 or 2 or 3)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local heading = GetEntityHeading(Ped)
			vKEYBOARD.Copy(source,"Coordenadas:","x="..mathLength(Coords["x"])..",y="..mathLength(Coords["y"])..",z="..mathLength(Coords["z"])..",h="..mathLength(heading))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("group",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if parseInt(Message[1]) > 0 and Message[2] and parseInt(Message[3]) then
	--		if Passport == 1 or Passport == 2 or vRP.HasGroup(Passport,"Admin",1) or vRP.Identities(source) == "745bd2e2ff57437c2e24749b23454c743ceca49c" then 
				TriggerClientEvent("Notify",source,"verde","Adicionado <b>"..Message[2].."</b> ao passaporte <b>"..Message[1].."</b>.",5000)
				TriggerEvent("Discord","Group","**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Permissão:** "..Message[2].."\n**Nível:** "..Message[3],3553599)
				vRP.SetPermission(Message[1],Message[2],Message[3])
			end
	--	end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNGROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ungroup",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",4) and parseInt(Message[1]) > 0 and Message[2] then
			if (Message[2] == "Admin" or Message[2] == "Premium") and not vRP.HasGroup(Passport,"Admin",1) then
				return
			end
			local Groups = vRP.Groups()
			if Groups[Message[2]] then
				vRP.RemovePermission(Message[1],Message[2])
				TriggerClientEvent("Notify",source,"verde","Removido <b>"..Message[2].."</b> do passaporte <b>"..Message[1].."</b>.",5000)
				local OtherSource = vRP.Source(Message[1])
				if OtherSource then
					TriggerClientEvent("player:Relationship",OtherSource,Message[2],true)
				end
				TriggerEvent("Discord","UnGroup","**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Grupo:** "..Message[2],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tptome",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",9) or  vRP.HasGroup(Passport,"Admin",3) or  vRP.HasGroup(Passport,"Dono",1) and parseInt(Message[1]) > 0 then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				vRP.Teleport(ClosestPed,Coords["x"],Coords["y"],Coords["z"])
				TriggerEvent("Discord","Tptome","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpto",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",9) or  vRP.HasGroup(Passport,"Admin",3) or  vRP.HasGroup(Passport,"Dono",1) and parseInt(Message[1]) > 0 then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				local Ped = GetPlayerPed(ClosestPed)
				local Coords = GetEntityCoords(Ped)
				vRP.Teleport(source,Coords["x"],Coords["y"],Coords["z"])
				TriggerEvent("Discord","Tpto","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpway",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",9) then
			vCLIENT.teleportWay(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMBO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("limbo",function(source)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) <= 100 then
		vCLIENT.teleportLimbo(source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("hash",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3)    then
			local vehicle = vRPC.VehicleHash(source)
			if vehicle then
				vKEYBOARD.Copy(source,"Hash:",vehicle)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tuning",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",3)   then
			local Vehicle,Network,Plate = vRPC.VehicleList(source,10)
			if Vehicle then
				TriggerClientEvent("admin:vehicleTuning",source,Network,Plate)
				TriggerEvent("Discord","Tuning","**Passaporte:** "..Passport.."\n**Placa:** "..Plate,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FIX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("fix",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",5)   then
			local Vehicle,Network,Plate,vehName = vRPC.VehicleList(source,10)
			if Vehicle then
				local Players = vRPC.Players(source)
				for _,v in pairs(Players) do
					async(function()
						TriggerClientEvent("inventory:RepairAdmin",v,Network,Plate)
					end)
				end
				if VehicleExist(vehName) then
					TriggerEvent("Discord","Repair","**Passaporte:** "..Passport.."\n**Veículo:** "..VehicleName(vehName).."\n**Placa:** "..Plate,3553599)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPAREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("limparea",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",7)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			TriggerClientEvent("syncarea",source,Coords["x"],Coords["y"],Coords["z"],100)
			TriggerEvent("Discord","ClearArea","**Passaporte:** "..Passport,3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- IDs
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ids",function(source)
	local source = source
	local String = ""
	local Amount = 0
	local List = vRP.Players()
	for k,v in pairs(List) do
		if k ~= #List then
			String = String..", "
		end
		String = String..k
		Amount = Amount + 1
	end
	TriggerClientEvent("Notify",source,"verde","<b>"..String.. "</b>",8000,"<b>"..Amount.." PASSAPORTE's ONLINE</b>")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ID
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("id",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",9) then
			local OtherPassport = Message[1] or vRP.ClosestPeds(5)
			local Identity = vRP.Identity(OtherPassport)
			if Identity then
				TriggerClientEvent("Notify",source,"azul","<b>Passaporte:</b> "..OtherPassport.."<br><b>Nome:</b> "..Identity["name"].." "..Identity["name2"].."<br><b>Telefone:</b> "..Identity["phone"].."<br><b>Carteira:</b> R$"..parseFormat(vRP.ItemAmount(OtherPassport,"dollars")).."<br><b>Banco:</b> R$"..parseFormat(Identity["bank"]).."<br><b>Cartão:</b> R$"..parseFormat(Identity["cardlimit"]).."<br><b>Paypal:</b> R$"..parseFormat(Identity["paypal"]),5000)
				TriggerEvent("Discord","Admin","**id**\n\n**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("check",function(source,Message)
	local Passport = vRP.Passport(source)
	local Consult = vRP.Query("smartphone/"..Message[1].."Check",{ Username = Message[2] })
	if Passport and Message[2] then
		if  vRP.HasGroup(Passport,"Admin",3)   then
			if Message[1] == "insta" or Message[1] == "twitter" then
			else
				return
			end
			
			if not Consult[1] then
				return
			end
			
			TriggerClientEvent("Notify",source,"verde","<b>Username</b>: "..Message[2].."<br><b>Passaporte<b>: "..Consult[1]["user_id"],5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:COORDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:Coords")
AddEventHandler("admin:Coords",function(Coords)
	vRP.Archive("coordenadas.txt",mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"]))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.buttonTxt()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",3)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local heading = GetEntityHeading(Ped)
			
			vRP.Archive(Passport..".txt",mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"])..","..mathLength(heading))
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand("ptr",function(source)
-- 	local Passport = vRP.Passport(source)
-- 	if Passport then
-- 		if  vRP.HasGroup(Passport,"Admin",3) then
-- 			local id,Police = vRP.NumPermission("Police")
-- 			local id,Mecanico = vRP.NumPermission("Mechanic")
-- 			local id,Paramedico = vRP.NumPermission("Hospital")
-- 			TriggerClientEvent("Notify",source,"verde","<b>Indice de Trabalhadores</b> ",10000)
-- 			TriggerClientEvent("Notify",source,"verde","<b>Número de Policiais "..Police.." </b>",10000)
-- 			TriggerClientEvent("Notify",source,"verde","<b>Número de Mecanicos "..Mecanico.." </b> ",10000)
-- 			TriggerClientEvent("Notify",source,"verde","<b>Número de Paramedicos "..Paramedico.." </b> ",10000)				
-- 		end
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANNOUNCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anuncio",function(source,Message,History)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] then
		if  vRP.HasPermission(Passport,"Admin",4) then
			TriggerClientEvent("Notify",-1,"verde","<b>Prefeitura:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Policia") then
			TriggerClientEvent("Notify",-1,"verde","<b>Polícia:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Bope") then
			TriggerClientEvent("Notify",-1,"verde","<b>BOPE:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"PoliciaFederal") then
			TriggerClientEvent("Notify",-1,"verde","<b>Polícia Federal:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Pmerj") then
			TriggerClientEvent("Notify",-1,"verde","<b>Polícia Militar RJ:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Pcerj") then
			TriggerClientEvent("Notify",-1,"verde","<b>Polícia Civil RJ:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Choque") then
			TriggerClientEvent("Notify",-1,"verde","<b>Batalhao do Choque:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Prf") then
			TriggerClientEvent("Notify",-1,"verde","<b>Polícia Rodoviaria Federal:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Core") then
			TriggerClientEvent("Notify",-1,"verde","<b>Polícia:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"Hospital") then
			TriggerClientEvent("Notify",-1,"verde","<b>Hospital:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"AutoSport") then
			TriggerClientEvent("Notify",-1,"verde","<b>Mecânica AutoSport:</b> "..History:sub(9),60000)
		elseif vRP.HasPermission(Passport,"EastCustoms") then
			TriggerClientEvent("Notify",-1,"verde","<b>Mecânica EastCustoms:</b> "..History:sub(9),60000)
		end
		TriggerEvent("Discord","Announce","**Passaporte:** "..Passport.."\n**Text:** "..History:sub(9),3553599)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONSOLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("console",function(source,Message,History)
	if source == 0 then
		TriggerClientEvent("Notify",-1,"verde","<b>Prefeitura:</b> "..History:sub(9),60000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICKALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kickall",function(source)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not  vRP.HasGroup(Passport,"Admin",4) then
			return
		end
		TriggerEvent("Discord","KickAll","**Passaporte:** "..Passport,3553599)
	end
	vRP.KickALL()
	TriggerEvent("SaveServer",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("save",function(source)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not  vRP.HasGroup(Passport,"Admin",4) then
			return
		end
		TriggerEvent("Discord","SaveData","**Passaporte:** "..Passport,3553599)
	end
	TriggerEvent("SaveServer",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("itemall",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",3)   then
			local Text = ""
			local List = vRP.Players()
			for OtherPlayer,_ in pairs(List) do
				async(function()
					if Text == "" then
						Text = OtherPlayer
					else
						Text = Text..", "..OtherPlayer
					end
					if Message[1] and Message[2] then
						vRP.GenerateItem(OtherPlayer,Message[1],Message[2],true)
						TriggerClientEvent("Notify",source,"verde","Envio de "..Message[2].."x "..Message[2].."concluído.",10000)
					end
				end)
			end
			TriggerEvent("Discord","GiveItemAll","**Passaporte:** "..Passport.."\n**Para:** "..Text.."\n**Item:** "..Message[2].."x "..itemName(Message[1]),3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RACECOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
local Checkpoint = 0
function Creative.raceCoords(vehCoords,leftCoords,rightCoords)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		Checkpoint = Checkpoint + 1
		
		vRP.Archive("races.txt","["..Checkpoint.."] = {")
		
		vRP.Archive("races.txt","{ "..mathLength(vehCoords["x"])..","..mathLength(vehCoords["y"])..","..mathLength(vehCoords["z"]).." },")
		vRP.Archive("races.txt","{ "..mathLength(leftCoords["x"])..","..mathLength(leftCoords["y"])..","..mathLength(leftCoords["z"]).." },")
		vRP.Archive("races.txt","{ "..mathLength(rightCoords["x"])..","..mathLength(rightCoords["y"])..","..mathLength(rightCoords["z"]).." }")
		
		vRP.Archive("races.txt","},")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Spectate = {}
RegisterCommand("spectate",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",9)    then
			if Spectate[Passport] then
				local Ped = GetPlayerPed(Spectate[Passport])
				if DoesEntityExist(Ped) then
					SetEntityDistanceCullingRadius(Ped,0.0)
				end
				
				TriggerClientEvent("admin:resetSpectate",source)
				Spectate[Passport] = nil
			else
				local nsource = vRP.Source(Message[1])
				if nsource then
					local Ped = GetPlayerPed(nsource)
					if DoesEntityExist(Ped) then
						SetEntityDistanceCullingRadius(Ped,999999999.0)
						Wait(1000)
						TriggerClientEvent("admin:initSpectate",source,nsource)
						Spectate[Passport] = nsource
						TriggerEvent("Discord","Spectate","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("reset",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		local OtherPassport = parseInt(Message[1])
		if  vRP.HasGroup(Passport,"Admin",3) and OtherPassport > 0 then
			local Creator = vRP.UserData(Passport,"Creator")
			if Creator == 1 then
				vRP.Query("playerdata/SetData",{ Passport = OtherPassport, dkey = "Creator", dvalue = 0 })
				TriggerClientEvent("Notify",source,"verde","Reset concluído.",5000)
				TriggerEvent("Discord","ResetCharacter","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUCKET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("bucket",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",3) and Message[1] then
			local Route = parseInt(Message[1])
			if Message[2] then
				local OtherPassport = parseInt(Message[2])
				local OtherSource = vRP.Source(OtherPassport)
				if OtherSource then
					if Route > 0 then
						TriggerEvent("vRP:BucketServer",OtherSource,"Enter",Route)
					else
						TriggerEvent("vRP:BucketServer",OtherSource,"Exit")
					end
					TriggerEvent("Discord","Bucket","**Passaporte:** "..Passport.."\n**Dimensão:** "..Route.."\n**Para:** "..OtherPassport,3553599)
				end
			else
				if Route > 0 then
					TriggerEvent("vRP:BucketServer",source,"Enter",Route)
				else
					TriggerEvent("vRP:BucketServer",source,"Exit")
				end
				TriggerEvent("Discord","Bucket","**Passaporte:** "..Passport.."\n**Dimensão:** "..Route,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("dm",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport,"Admin",9) and Message[1] then
			local OtherSource = vRP.Source(Message[1])
			if OtherSource then
				local Keyboard = vKEYBOARD.Primary(source,"Mensagem:")
				if Keyboard then
					local name1 = vRP.Identity(Passport).name.. vRP.Identity(Passport).name2
					local name = vRP.Identity(Message[1]).name.. vRP.Identity(Message[1]).name2
					vRPC.PlaySound(source, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
					vRPC.PlaySound(OtherSource, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
					TriggerClientEvent("Notify", OtherSource, "verde","</b>"..name1.." Te enviou: "..Keyboard[1].."</b>",10000)
					TriggerClientEvent("Notify", source, "verde","Mensagem Enviada para "..name,10000)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("services",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and  vRP.HasGroup(Passport,"Admin",3) or vRP.HasGroup(Passport,"Admin",1) or vRP.HasGroup(Passport,"Dono",1) then
		local Text = ""
		local Groups = vRP.Groups()
		if Message[1] then
			if Groups[Message[1]] then
				local Data = vRP.DataGroups(Message[1])
				
				for Passport,Level in pairsKeys(Data) do
					if Text == "" then
						Text = "<b>"..Passport..":</b> "..Level
					else
						Text = Text.."<br><b>"..Passport..":</b> "..Level
					end
				end
			end
		else
			for Permission,_ in pairsKeys(Groups) do
				local _,Total = vRP.NumPermission(Permission)
				if Text == "" then
					Text = "<b>"..Permission..":</b> "..Total
				else
					Text = Text.."<br><b>"..Permission..":</b> "..Total
				end
			end
		end
		
		if Text ~= "" then
			TriggerClientEvent("Notify",source,"azul",Text,20000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHANNEL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("channel",function(source,Message)
	if Message[1] then
		if source ~= 0 then
			local Passport = vRP.Passport(source)
			if not vRP.HasGroup(Passport,"Admin",3)    then
				return
			end
		end
		
		local Text = ""
		local Channel = exports["pma-voice"]:getPlayersInRadioChannel(tonumber(Message[1]))
		
		for Sources,_ in pairs(Channel) do
			if Text == "" then
				Text = vRP.Passport(Sources)
			else
				Text = Text..", "..vRP.Passport(Sources)
			end
		end
		
		if source ~= 0 then
			TriggerClientEvent("Notify",source,"azul","Canal <b>"..Message[1].."</b>: "..Text..".",15000)
		else
			print("^2Canal "..Message[1]..":^7 "..Text)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GENERATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("generate",function(source,Message)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport,"Admin",3)    then
			return
		end
	end
	
	local List = {}
	if Message[1] == "item" then
		List = itemList()
	elseif Message[1] == "car" then
		List = VehicleGlobal()
	elseif Message[1] == "anim" then
		if source == 0 then
			local Players = vRP.Players()
			if #Players <= 0 then
				return
			end
			
			for _,OtherSource in pairs(Players) do
				source = OtherSource
				break
			end
		end
		
		List = vANIM.AnimList(source)
	end
	
	if List then
		local Text = "**"..Message[1].."**"
		
		for Index,v in pairsKeys(List) do
			if Message[1] == "car" then
				if v["Mode"] == "rental" then
					Text = Text.."\n"..Index
				end
			else
				Text = Text.."\n"..Index
			end
		end
		
		Text = Text.."\n"
		
		vRP.Archive("generate.txt",Text)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CUSTOM
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	[1] = "hat",
	[2] = "pants",
	[3] = "vest",
	[4] = "bracelet",
	[5] = "backpack",
	[6] = "decals",
	[7] = "mask",
	[8] = "shoes",
	[9] = "tshirt",
	[10] = "torso",
	[11] = "accessory",
	[12] = "watch",
	[13] = "arms",
	[14] = "glass",
	[15] = "ear"
}

RegisterCommand("custom",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",3)    then
			local Custom = vSKINSHOP.Customization(source)
			if Custom then
				local Text = ""
				local Count = 1
				
				repeat
					if Text == "" then
						Text = '["'..List[Count]..'"] = { item = '..Custom[List[Count]]["item"]..', texture = '..Custom[List[Count]]["texture"]..' }'
					else
						Text = Text..',\n["'..List[Count]..'"] = { item = '..Custom[List[Count]]["item"]..', texture = '..Custom[List[Count]]["texture"]..' }'
					end
					
					Count = Count + 1
				until Count == #List + 1
				
				Text = Text.."\n"
				
				-- vRP.Archive("custom.txt",Text)
				vKEYBOARD.Copy("custom.txt",Text)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEBUG
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand("debug",function(source,args,rawCommand)
-- 	local Passport = vRP.Passport(source)
-- 	if Passport then
-- 		if vRP.HasGroup(Passport,"Admin",3)    then
-- 			TriggerClientEvent("admin:DebugToggle",source)
-- 		end
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:DEBUGINFORMATIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:DebugInformations")
AddEventHandler("admin:DebugInformations",function(Entity)
	local source = source
	vKEYBOARD.Copy(source,"Informations:",Entity[2]..","..mathLength(Entity[4]["x"])..","..mathLength(Entity[4]["y"])..","..mathLength(Entity[4]["z"])..","..mathLength(Entity[5]))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:LOGS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:Logs")
AddEventHandler("admin:Logs",function(Info)
	local source = source
	vKEYBOARD.keyCopy(source,"Log:",Info)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TXADMIN:EVENTS:SERVERSHUTTINGDOWN
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("txAdmin:events:serverShuttingDown",function(eventData)
	TriggerEvent("SaveServer",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport)
	if Spectate[Passport] then
		Spectate[Passport] = nil
	end
	
	if Blips[Passport] then
		Blips[Passport] = nil
	end
	
	if Noclip[Passport] then
		Noclip[Passport] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVEAUTO
-----------------------------------------------------------------------------------------------------------------------------------------
local LastSave = os.time() + 600
CreateThread(function()
	while true do
		Wait(60000)

		if os.time() >= LastSave then
			TriggerEvent("SaveServer",false)
			TriggerEvent("SaveServer2",false)
			print('Salvou o Banco de Dados com Sucesso!! Nova Moda RJ')
			LastSave = os.time() + 600
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD AREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("godarea",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1)  then
			local Range = parseInt(Message[1])
			if Range then
				local Text = ""
				local Players = vRPC.ClosestPeds(source,Range)
				for _,v in pairs(Players) do
					async(function()
						local OtherPlayer = vRP.Passport(v)
						vRP.UpgradeThirst(OtherPlayer,100)
						vRP.UpgradeHunger(OtherPlayer,100)
						vRP.DowngradeStress(OtherPlayer,100)
						vRP.Revive(v,200)
						TriggerClientEvent("paramedic:Reset",v)
						
						if Text == "" then
							Text = OtherPlayer
						else
							Text = Text..", "..OtherPlayer
						end
					end)
				end
				TriggerClientEvent("Notify","verde","God Area Aplicado Com Sucesso <b>",5000)
				TriggerEvent("Discord","God","**goda**\n\n**Passaporte:** "..Passport.."\n**Para:** "..Text,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBACKP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("addback",function(source,args,rawCommand)
    local Passport = vRP.Passport(source)
    if Passport and args[1] then
        if vRP.HasGroup(Passport,"Admin",1) then
            local OtherPassport = parseInt(args[1])
            local PesoBack = parseInt(args[2])
            vRP.SetWeight(OtherPassport,PesoBack)
            TriggerClientEvent("Notify",source,"verde","Mochila adicionado para <b>"..OtherPassport.."</b> em "..PesoBack.."KG.",5000)
			TriggerEvent("Discord","Addback","**Add Back**\n\n**Passaporte:** "..Passport.."\n**Para o ID :** "..args[1].."\n**Kilos Setados :** "..args[2].."kg \n**Horário:** "..os.date("%H:%M:%S"),3553599)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMBACK - 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("remback",function(source,args,rawCommand)
    local Passport = vRP.Passport(source)
    if Passport and args[1] then
        if vRP.HasGroup(Passport,"Admin",1) then
            local OtherPassport = parseInt(args[1])
            local PesoBack = parseInt(args[2])
            vRP.RemoveWeight(OtherPassport,PesoBack)
            TriggerClientEvent("Notify",source,"verde","Mochila removida de <b>"..OtherPassport.."</b> em "..PesoBack.."KG.",5000)
			TriggerEvent("Discord","Remback","**Rem Back**\n\n**Passaporte:** "..Passport.."\n**Retirou do ID :** "..args[1].."\n**Kilos Retirados :** "..args[2].."kg \n**Horário:** "..os.date("%H:%M:%S"),3553599)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLACKOUT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("blackout", function(source, args)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1) then
			if GlobalState["Blackout"] then
				GlobalState["Blackout"] = false
				TriggerClientEvent("Notify",source,"amarelo","Modo blackout desativado.",5000)
			else
				GlobalState["Blackout"] = true
				TriggerClientEvent("Notify",source,"verde","Modo blackout ativado.",5000)
			end
		else
			TriggerClientEvent("Notify",source,"amarelo","Você não tem permissões para isso.",5000)
		end
	end
end)

