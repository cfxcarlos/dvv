-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("washing",Creative)
vCLIENT = Tunnel.getInterface("washing")
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Washing()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local Keyboard = vKEYBOARD.Primary(source,"Quanto dinheiro você deseja lavar?")
        if Keyboard then
            local taxaMaquina = 0.6 
            if tonumber(Keyboard[1]) > 0 then 
                if vRP.TakeItem(Passport, "dollars2", tonumber(Keyboard[1])) then
                    TriggerClientEvent("Progress", source, 10000)
                    SetTimeout(10000, function()
                        vRPC.stopAnim(source,false)
                        vRP.GenerateItem(Passport,"dollars",parseInt(tonumber(Keyboard[1]) * taxaMaquina),true)
                        TriggerClientEvent("Notify", source, "azul", "Você lavou <b>$"..tonumber(Keyboard[1]).."</b> Dinheiro sujo.\n E recebeu <b>$"..parseInt(tonumber(Keyboard[1]) * taxaMaquina).."</b> de dinheiro limpo.", 5000)
                    
                        local Identity = vRP.Identity(Passport)
                        local webdrops = "/webhooks/1261940368664956978/NsPJGHoOvOfR8lCXsNLFULUzpPXI_jPce9TnURgE0kPlSVO6Mprc73Mc7vgzw5ZY4FH-"
                        SendWebhookMessage(webdrops, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. Passport .."] lavou $"..parseInt(tonumber(Keyboard[1])).." recebeu $"..parseInt(tonumber(Keyboard[1]) * taxaMaquina)..".```")
            
                        TriggerClientEvent("Screenshot",source,webdrops)
                    end)
                else
                    TriggerClientEvent("Notify", source, "amarelo", "Você não possui <b>dinheiro sujo</b> na mochila.", 4500)
                end
            else
                TriggerClientEvent("Notify", source, "verde", "Você precisa inserir um valor válido para confirmar sua solicitação.", 4500)
            end
        else
            vRPC.stopAnim(source,false)
        end
    end
end

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
