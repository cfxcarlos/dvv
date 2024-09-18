local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")



local webhooklinkdeath = "/webhooks/1256806856035274803/Jk93OfxIepvO0-gOS6LpBU882mzktHWjmp7MjJiiBlzNjBZbHcg6BWPK6pSINcegMCEm"

function SendWebhookMessage(webhook,message)
	PerformHttpRequest(webhook,function(err,text,headers) end,"POST",json.encode({
		username = "LOG MORTE",
		embeds = { { color = Color, description = message } }
	}),{ ["Content-Type"] = "application/json" })
end

RegisterServerEvent('ScreenshotKillLog')
AddEventHandler('ScreenshotKillLog', function(message, urlImg)
    PerformHttpRequest(webhooklinkdeath, function(err, text, headers) end, "POST", json.encode({
        username = "LOG MORTE",
        embeds = {{
            color = Color,
            description = message,
            image = {
                url = urlImg
            }
        }}
    }), { ["Content-Type"] = "application/json" })

end)

RegisterServerEvent('logplayerDied')
AddEventHandler('logplayerDied',function(killer,reason,weapon,cds,cds2)
	local source = source
	local user_id = vRP.Passport(source)
    local Identity = vRP.Identity(user_id)
    local killer_id = vRP.Passport(tonumber(killer))
    local List = ItemGlobal()
    for k,v in pairs(List) do
        if v.Type == "Armamento" then
            if GetHashKey(k) == weapon then
                weapon = v.Name break
            end
        end
    end
	if killer == "**Invalid**" or killer == source then
		SendWebhookMessage(webhooklinkdeath, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] se matou na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
		--TriggerClientEvent("ScreenshotKillLog",source, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] se matou na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
	elseif killer == nil then
		SendWebhookMessage(webhooklinkdeath, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] se matou na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
		--TriggerClientEvent("ScreenshotKillLog",source,"```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] se matou na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
	elseif killer == nil and reason == 3 and weapon == nil then
		SendWebhookMessage(webhooklinkdeath, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] está em coma na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
		--TriggerClientEvent("ScreenshotKillLog",source,"```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] está em coma na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
	elseif killer ~= nil then
		if reason == 1 then
			if killer_id then
                local k_Identity = vRP.Identity(killer_id)
				SendWebhookMessage(webhooklinkdeath, "```"..(k_Identity["name"].." "..k_Identity["name2"]).." ["..killer_id.."] estava na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..") \nMatou com "..weapon.." \n".. (Identity["name"].." "..Identity["name2"]) .." ["..user_id.."] estava na coordenada ("..mathLength(cds2.x)..","..mathLength(cds2.y)..","..mathLength(cds2.z)..")```")


				--TriggerClientEvent("ScreenshotKillLog",source,"```"..(k_Identity["name"].." "..k_Identity["name2"]).." ["..killer_id.."] estava na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..") \nMatou com "..weapon.." \n".. (Identity["name"].." "..Identity["name2"]) .." ["..user_id.."] estava na coordenada ("..mathLength(cds2.x)..","..mathLength(cds2.y)..","..mathLength(cds2.z)..")```")
				--TriggerClientEvent("ScreenshotKillLog",tonumber(killer),"```"..(Identity["name"].." "..Identity["name2"]).." ["..user_id.."] estava na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..") \n morreu para "..weapon.." de \n".. (Identity["name"].." "..Identity["name2"]) .." ["..user_id.."] estava na coordenada ("..mathLength(cds2.x)..","..mathLength(cds2.y)..","..mathLength(cds2.z)..")```")
			end
		end
	else
		SendWebhookMessage(webhooklinkdeath, "```".. (Identity["name"].." "..Identity["name2"]) .." [".. user_id .."] morreu de forma desconhecida na cds ("..mathLength(cds.x)..","..mathLength(cds.y)..","..mathLength(cds.z)..").```")
		--TriggerClientEvent("ScreenshotKillLog",source,webhooklinkdeath)
	end
end)