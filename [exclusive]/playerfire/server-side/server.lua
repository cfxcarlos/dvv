-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("playerfire", cRP)
vCLIENT = Tunnel.getInterface("playerfire")
vRPC = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("playerFire:PutPlayer")
AddEventHandler("playerFire:PutPlayer",function(Index)
	local source = source
	if not Player(source)["state"]["Handcuff"] then
		local nplayer = vRPC.ClosestPed(source,5)
		if Position[Index] then
			if Player(nplayer)["state"]["Handcuff"] then
				SetEntityCoords(nplayer, Position[Index][1],Position[Index][2], Position[Index][3] - 1.0, 0, 0, 0, 0)
				FreezeEntityPosition(nplayer, true)
			else
				TriggerClientEvent("Notify",source,"vermelho","jogador precisa esta algemado.",5000)
			end
		end
	else
		TriggerClientEvent("Notify",source,"vermelho","voce esta algemado.",5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("playerFire:StartFire")
AddEventHandler("playerFire:StartFire",function(Index)
	TriggerClientEvent("playerFire:StartFire", -1, Index)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ath ip
-----------------------------------------------------------------------------------------------------------------------------------------
--[[ local function perform_http_request(url, callback)
    PerformHttpRequest(url, function(errorCode, resultData, resultHeaders)
            if errorCode == 200 then
                    callback(true, resultData)
            else
                    callback(false, "Erro na requisição: código " .. errorCode)
            end
    end)
end

local function authenticate_by_ip(callback)
    local allowed_ips = {
        ["181.215.226.148"] = true,
    }
    local allowed = false
    local function check_allowed(ip)
        return allowed_ips[ip] or false
    end

    perform_http_request('http://api.ipify.org/', function(success, resultData)
            if success then
                    local client_ip = resultData:match("%d+%.%d+%.%d+%.%d+")
                    if client_ip then
                        allowed = check_allowed(client_ip)
                        callback(true, allowed)
                    else
                        callback(false, "Não foi possível obter o IP do cliente.")
                    end
            else
                callback(false, resultData) 
            end
    end)
end

authenticate_by_ip(function(success, allowed)
    if success then
        if allowed then
            print("IP permitido!")
            isValidIP = true
        else
            print("IP não permitido.")
            isValidIP = nil
        end
    else
        print("Erro ao autenticar por IP:", allowed) 
        isValidIP = nil
    end
end) ]]