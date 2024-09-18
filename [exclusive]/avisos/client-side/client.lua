RegisterCommand("novamoda_adminrr", function()
    print("teste registro de comando")
    SendNUIMessage({
        action = "open"
    })

    Citizen.SetTimeout(300000, function()
        PerformHttpRequest("http://localhost:12345/kickAll", function(err, text, headers)
            if err == 200 then
                print("Jogadores kickados com sucesso")
            else
                print("Erro ao tentar kickar os jogadores: " .. tostring(err))
            end
        end, 'POST', '', {['Content-Type'] = 'application/json'})
    end)
end, false)

RegisterNUICallback("kickAll", function(data, cb)
    local players = GetActivePlayers()
    for _, player in ipairs(players) do
        NetworkKickPlayer(player, "Você foi desconectado pelo administrador.")
    end

    cb("ok")
end)