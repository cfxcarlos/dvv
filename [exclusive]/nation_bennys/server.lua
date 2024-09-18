local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

Creative = {}
Tunnel.bindInterface("nation_bennys",Creative)

local using_bennys = {}

function Creative.checkPayment(Price)
    local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.PaymentMoney(Passport,Price) or vRP.PaymentBank(Passport,Price) then
            TriggerClientEvent("Notify",source,"sucesso","Você pagou <b>$"..tonumber(Price).." dólares<b>.",7000)
            return true
        end
	end
    return false
end

function Creative.repairVehicle(vehicle, damage)
    TriggerEvent("tryreparar", vehicle)
    return true
end

function Creative.removeVehicle(vehicle)
    using_bennys[vehicle] = nil
    return true
end

function Creative.checkVehicle(vehicle)
    if using_bennys[vehicle] then
        return false
    end
    using_bennys[vehicle] = true
    return true
end

function Creative.saveVehicle(vehName, Plate, Mods)
	local Data = vRP.PassportPlate(Plate)
	if Data then
		vRP.Query("entitydata/SetData",{ dkey = "Mods:"..Data["Passport"]..":"..vehName, dvalue = json.encode(Mods) })
	end
    return true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
local inVehicle = {}
RegisterServerEvent("bennys:inVehicle")
AddEventHandler("bennys:inVehicle",function(Network,Plate)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Network then
			if inVehicle[Passport] then
				inVehicle[Passport] = nil
			end
		else
			inVehicle[Passport] = { Network,Plate }
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport)
	if inVehicle[Passport] then
		Wait(1000)
		TriggerEvent("garages:deleteVehicle",inVehicle[Passport][1],inVehicle[Passport][2])
		inVehicle[Passport] = nil
	end
end)