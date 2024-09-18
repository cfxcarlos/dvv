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
vSERVER = Tunnel.getInterface("CodinRadio")

local usedFrequencys = 0

RegisterKeyMapping('pageup', 'Subir frequencia do radio', 'keyboard', 'pageup')
RegisterKeyMapping('pagedown', 'descer frequencia do radio', 'keyboard', 'pagedown')



RegisterNetEvent("CodinRadio:openRadio")
AddEventHandler("CodinRadio:openRadio",function()
    SetNuiFocus(true,true)

    SendNUIMessage({
        menu = true,
        serverName = Config.serverName,
        volume = Config.volume,
        size = Design.Size
    })

    if not IsPedInAnyVehicle(PlayerPedId()) then
        vRP.createObjects("cellphone@","cellphone_text_in","prop_cs_hand_radio",50,28422)
    end
end)    


-- Callbacks

RegisterNUICallback('addFrequency', function(data, cb)


    local frequency = tonumber(data.frequency)
    vSERVER.activeFrequency(frequency)
    TriggerEvent("hud:Radio",frequency)

end)

RegisterNUICallback('muteSound', function(data, cb)
    local muted = data.muted -- output ( muted = true, muted = false )
    local mutedVolume

    if muted then 
        mutedVolume = 0
    else
        mutedVolume = 100
    end
    exports["pma-voice"]:setRadioChannel(mutedVolume)

end)

RegisterNUICallback('atualizeFrequencys', function(data, cb)
    if (data.frequency) == nil then
        exports["pma-voice"]:removePlayerFromRadio()
        TriggerEvent("hud:Radio",0)
        vSERVER.cleanFrequency()
    else
        usedFrequencys = tonumber(data.frequency)
        exports["pma-voice"]:setRadioChannel(frequency)
        SendNUIMessage({atualizeFrequencys = usedFrequencys})
		TriggerEvent("hud:Radio",usedFrequencys)

    end

    if data.direction == "down" then
        SendNUIMessage({action = "pagedown", atualizeFrequencys = usedFrequencys})
        TriggerEvent("hud:Radio",usedFrequencys)

    elseif data.direction == "down" then 
        SendNUIMessage({action = "up", atualizeFrequencys = usedFrequencys})
        TriggerEvent("hud:Radio",usedFrequencys)

    end
end)


RegisterNUICallback('handleVolume', function(data, cb)
    local volume =  tonumber(data.volume)
    exports["pma-voice"]:setRadioVolume(volume)

end)

RegisterCommand('pageup', function()
    SendNUIMessage({action = "up", atualizeFrequencys = usedFrequencys})
    TriggerEvent("hud:Radio",usedFrequencys)

end)

RegisterCommand('pagedown', function()
    SendNUIMessage({action = "pagedown", atualizeFrequencys = usedFrequencys})
    TriggerEvent("hud:Radio",usedFrequencys)

    
end)

RegisterNUICallback('closeUI', function(data, cb)
    SetNuiFocus(false,false)
    vRP.removeObjects("one")

end)

function South.startFrequency(frequency)
    if activeFrequencys ~= 0 then
        exports["pma-voice"]:removePlayerFromRadio()
    end

    exports["pma-voice"]:setRadioChannel(frequency)

    activeRadio = true

    SendNUIMessage({ frequency = frequency })
    TriggerEvent("hud:Radio",frequency)

end