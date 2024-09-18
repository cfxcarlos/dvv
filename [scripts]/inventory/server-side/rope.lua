-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:Carry")
AddEventHandler("inventory:Carry",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Carry[Passport] then
			local OtherSource = vRPC.ClosestPed(source,2)
			local OtherPassport = vRP.Passport(OtherSource)
			if OtherSource and not Carry[OtherPassport] and DoesPlayerExist(OtherSource) and not IsEntityVisible(GetPlayerPed(OtherSource)) then
				Carry[Passport] = OtherSource
				Player(source)["state"]["Carry"] = true
				Player(OtherSource)["state"]["Carry"] = true
				TriggerClientEvent("inventory:Carry",OtherSource,source,"Attach")
			end
		else
			if DoesPlayerExist(Carry[Passport]) then
				TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach")
				Player(Carry[Passport])["state"]["Carry"] = false
			end
			Player(source)["state"]["Carry"] = false
			Carry[Passport] = nil
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:SERVERCARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:ServerCarry")
AddEventHandler("inventory:ServerCarry",function(source,Passport,OtherSource,Handcuff)
	if not Carry[Passport] then
		local OtherPassport = vRP.Passport(OtherSource)
		if not Carry[OtherPassport] and DoesPlayerExist(OtherSource) then
			Carry[Passport] = OtherSource
			Player(source)["state"]["Carry"] = true
			Player(OtherSource)["state"]["Carry"] = true
			TriggerClientEvent("inventory:Carry",OtherSource,source,"Attach",Handcuff)
		end
	else
		if DoesPlayerExist(Carry[Passport]) then
			TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach")
			Player(Carry[Passport])["state"]["Carry"] = false
		end
		Player(source)["state"]["Carry"] = false
		Carry[Passport] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:CarryDetach")
AddEventHandler("inventory:CarryDetach",function(source,Passport)
	if Carry[Passport] then
		if DoesPlayerExist(Carry[Passport]) then
			TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach")
			Player(Carry[Passport])["state"]["Carry"] = false
		end
		Player(source)["state"]["Carry"] = false
		Carry[Passport] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:CarryDetachDeath")
AddEventHandler("inventory:CarryDetachDeath",function(source)
	for k,v in pairs(Carry) do
		if v == source then
			if DoesPlayerExist(source) then
				TriggerClientEvent("inventory:Carry",source,vRP.Source(k),"Detach")
				Player(source)["state"]["Carry"] = false
			end
			Player(vRP.Source(k))["state"]["Carry"] = false
			Carry[k] = nil
			break
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:Carregar")
AddEventHandler("inventory:Carregar",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",9) or vRP.HasGroup(Passport,"Policia") or vRP.HasGroup(Passport,"Hospital") then
			if not Carry[Passport] then
				local OtherSource = vRPC.ClosestPed(source,2)
				local OtherPassport = vRP.Passport(OtherSource)
				if OtherSource and not Carry[OtherPassport] and DoesPlayerExist(OtherSource) then
					Carry[Passport] = OtherSource
					Player(source)["state"]["Carry"] = true
					Player(OtherSource)["state"]["Carry"] = true
					TriggerClientEvent("inventory:Carry",OtherSource,source,"Attach",true)
				end
			else
				if DoesPlayerExist(Carry[Passport]) then
					TriggerClientEvent("inventory:Carry",Carry[Passport],source,"Detach",true)
					Player(Carry[Passport])["state"]["Carry"] = false
				end
				Player(source)["state"]["Carry"] = false
				Carry[Passport] = nil
			end
		end
	end
end)