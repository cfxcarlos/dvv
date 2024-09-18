-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
South = {}
Tunnel.bindInterface("CodinRadio",South)
vCLIENT = Tunnel.getInterface("CodinRadio")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVEFREQUENCY
-----------------------------------------------------------------------------------------------------------------------------------------
local enteredFrequencies = {}

function South.activeFrequency(freq)
    local Source = Source
    local Passport = vRP.Passport(Source)
    if Passport then
        local maxFrequencys = Config.maxFrequencys


        if Config.VIP[Passport] then
            maxFrequencys = Config.VIP[Passport]
        end

        if enteredFrequencies[Passport] and enteredFrequencies[Passport] >= maxFrequencys then
			TriggerClientEvent("Notify",Source,"vermelho","Foi atigindo o limite de frequencia, o seu limite é de "..maxFrequencys..".",3000)
            return 
        end

        enteredFrequencies[Passport] = (enteredFrequencies[Passport] or 0) + 1

        if Config.PrivateFrequencys[freq] and vRP.hasGroup(Passport, Config.PrivateFrequencys[freq]) then
			TriggerClientEvent("hud:Radio",Source,parseInt(freq))

            vCLIENT.startFrequency(Source, parseInt(freq))
        else
			TriggerClientEvent("hud:Radio",Source,parseInt(freq))

            vCLIENT.startFrequency(Source, parseInt(freq))
        end

    end
end

function South.cleanFrequency()
    local Source = Source
    local Passport = vRP.Passport(Source)
    if Passport then
        enteredFrequencies[Passport] = (enteredFrequencies[Passport] or 0) - 1
    end
end