-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Amounts = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTICK
-----------------------------------------------------------------------------------------------------------------------------------------
local function ThreadTick()
	for Route,Table in pairs(Drops) do
		for Number,v in pairs(Table) do
			if Drops[Route] and Drops[Route][Number] and os.time() >= v["Timer"] then
				TriggerClientEvent("inventory:DropsRemover",-1,Route,Number)
				Drops[Route][Number] = nil
			end
		end
	end

	SetTimeout(60000,ThreadTick)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTICKINIT
-----------------------------------------------------------------------------------------------------------------------------------------
ThreadTick()
-----------------------------------------------------------------------------------------------------------------------------------------
-- DROPS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Drops(Item,Slot,Amount)
	local source = source
	local Passport = vRP.Passport(source)
	local Route = GetPlayerRoutingBucket(source)
	if Passport and not Active[Passport] and Amount > 0 and not Player(source)["state"]["Handcuff"] and not exports["hud"]:Wanted(Passport) and not vRPC.InsideVehicle(source) then
		Active[Passport] = true

		vRPC.playAnim(source,false,{"pickup_object","pickup_low"},true)
		SetTimeout(1000,function()
			vRPC.removeObjects(source)
		end)

		if vRP.TakeItem(Passport,Item,Amount,false,Slot) then
			local Coords = vCLIENT.EntityCoordsZ(source)
			local Identity = vRP.Identity(Passport)
			local webdrops = "/webhooks/1261936156614983751/ec-lkUc-Lf6QHN-lA7BnDRyYCG7lCqJvNB4tMGyr1mYo1QMpfJ9ub6qSIvCBrWmczqnN"
			SendWebhookMessage(webdrops, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. Passport .."] dropou x"..Amount.."("..itemName(Item)..") na cds ("..mathLength(Coords.x)..","..mathLength(Coords.y)..","..mathLength(Coords.z)..").```")
			TriggerClientEvent("Screenshot",source,webdrops)

			Amounts = Amounts + 1

			if not Drops[Route] then
				Drops[Route] = {}
			end

			local Number = tostring(Amounts)
			Drops[Route][Number] = {
				["Key"] = Item,
				["Route"] = Route,
				["Amount"] = Amount,
				["Id"] = Number,
				["Peso"] = itemWeight(Item),
				["Index"] = itemIndex(Item),
				["Name"] = itemName(Item),
				["Coords"] = Coords,
				["Timer"] = os.time() + 600
			}

			TriggerClientEvent("inventory:DropsAdicionar",-1,Route,Number,Drops[Route][Number])
			TriggerClientEvent("inventory:Update",source,"Backpack")
		end

		Active[Passport] = nil
	else
		TriggerClientEvent("inventory:Update",source,"Backpack")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DROPS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Drops",function(Passport,source,Item,Amount)
	local Amount = parseInt(Amount,true)
	local Route = GetPlayerRoutingBucket(source)

	Amounts = Amounts + 1
	if not Drops[Route] then
		Drops[Route] = {}
	end

	local Number = tostring(Amounts)
	Drops[Route][Number] = {
		["Key"] = Item,
		["Route"] = Route,
		["Amount"] = Amount,
		["Id"] = Number,
		["Peso"] = itemWeight(Item),
		["Index"] = itemIndex(Item),
		["Name"] = itemName(Item),
		["Coords"] = vCLIENT.EntityCoordsZ(source),
		["Timer"] = os.time() + 600
	}

	TriggerClientEvent("inventory:DropsAdicionar",-1,Route,Number,Drops[Route][Number])
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PICKUP
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Pickup(Number,Target,Amount)
	local source = source
	local Amount = parseInt(Amount,true)
	local Passport = vRP.Passport(source)
	local Route = GetPlayerRoutingBucket(source)
	if Passport and not Active[Passport] and Drops[Route] and Drops[Route][Number] and Drops[Route][Number]["Timer"] > os.time() then
		Active[Passport] = true
		if (vRP.InventoryWeight(Passport) + itemWeight(Drops[Route][Number]["Key"]) * Amount) <= vRP.GetWeight(Passport) then

			if not Drops[Route] or not Drops[Route][Number] or Drops[Route][Number]["Amount"] < Amount then
				TriggerClientEvent("inventory:Update",source,"Backpack")
				Active[Passport] = nil
				return false
			end

			vRPC.playAnim(source,false,{"pickup_object","pickup_low"},true)
			SetTimeout(1000,function()
				vRPC.removeObjects(source)
			end)

			local Inv = vRP.Inventory(Passport)
			if Inv[Target] then
				if Inv[Target]["item"] == Drops[Route][Number]["Key"] then
					vRP.GiveItem(Passport,Drops[Route][Number]["Key"],Amount,false,Target)
				end
			else
				vRP.GiveItem(Passport,Drops[Route][Number]["Key"],Amount,false,Target)
			end
			TriggerClientEvent("inventory:PlaySoundFrontend",source, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET")
			Drops[Route][Number]["Amount"] = Drops[Route][Number]["Amount"] - Amount
			if Drops[Route][Number]["Amount"] <= 0 then
				TriggerClientEvent("inventory:DropsRemover",-1,Route,Number)
				Drops[Route][Number] = nil
			else
				TriggerClientEvent("inventory:DropsAtualizar",-1,Route,Number,Drops[Route][Number]["Amount"])
			end

			TriggerClientEvent("inventory:Update",source,"Backpack")

		else
			TriggerClientEvent("inventory:Update",source,"Backpack")
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
		end

		Active[Passport] = nil
	else
		TriggerClientEvent("inventory:Update",source,"Backpack")
	end
end


function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook,function(err,text,headers) end,"POST",json.encode({
			username = "LOG MORTE",
			embeds = { { color = Color, description = message } }
		}),{ ["Content-Type"] = "application/json" })
	end
end