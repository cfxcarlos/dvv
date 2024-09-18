-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Active = {}
Sources = {}
Identity = {}
Characters = {}
Dependents = {}
UserPhone = {}
PassportPlate = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUERIES
-----------------------------------------------------------------------------------------------------------------------------------------
local Prepares = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Prepare(Name,Query)
    Prepares[Name] = Query
end
function vRP.Desc()
    return ServerName
end
function vRP.Mode(Name)    
     return VehicleMode(Name) 
end  
function vRP.VehiclePrice(Name)     
    return VehiclePrice(Name) 
end
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.VehicleGems(Name)     
    return VehicleGemstone(Name) 
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUERY
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Query(Name,Params)
    return exports.oxmysql:query_async(Prepares[Name],Params)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- IDENTITIES
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Identities(source)
    local Result = false
    local Identifiers = GetPlayerIdentifiers(source)
    for _,v in pairs(Identifiers) do
        if string.find(v,"license") then
            local SplitName = splitString(v,":")
            Result = SplitName[2]
            break
        end
    end
    return Result
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARCHIVE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Archive(Archive,Text)
    Archive = io.open(Archive,"a")
    if Archive then
        Archive.write(Archive,Text.."\n")
    end
    Archive.close(Archive)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANNED
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Banned(License)
    local Consult = vRP.Query("banneds/GetBanned",{ license = License })
    if Consult[1] then
        if Consult[1]["time"] <= os.time() then
            vRP.Query("banneds/RemoveBanned",{ license = License })
            return false
        end
        return true
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACCOUNT
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Account(License)
    local Consult = vRP.Query("accounts/Account",{ license = License })
    return Consult[1] or false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- USERDATA
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.UserData(Passport,Key)
    local Consult = vRP.Query("playerdata/GetData",{ Passport = Passport, dkey = Key })
    if Consult[1] then
        return json.decode(Consult[1]["dvalue"])
    else
        return {}
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- INSIDEPROPERTYS
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.InsidePropertys(Passport,Coords)
    local Datatable = vRP.Datatable(Passport)
    if Datatable then
        Datatable["Pos"] = { x = mathLength(Coords["x"]), y = mathLength(Coords["y"]), z = mathLength(Coords["z"]) }
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Inventory(Passport)
    local Datatable = vRP.Datatable(Passport)
    if Datatable then
        if not Datatable["Inventory"] then
            Datatable["Inventory"] = {}
        end
        return Datatable["Inventory"]
    end
    return {}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVETEMPORARY
-------------------------------------- ---------------------------------------------------------------------------------------------------
function vRP.SaveTemporary(Passport,source,Route)
    local source = source
    local Datatable = vRP.Datatable(Passport)
    local Ped = GetPlayerPed(source)
    if not Prepares[Passport] and Datatable then
        Prepares[Passport] = {}
        Prepares[Passport]["Inventory"] = Datatable["Inventory"]
        Prepares[Passport]["Health"] = GetEntityHealth(Ped)
        Prepares[Passport]["Armour"] = GetPedArmour(Ped)
        Prepares[Passport]["Stress"] = Datatable["Stress"]
        Prepares[Passport]["Hunger"] = Datatable["Hunger"]
        Prepares[Passport]["Thirst"] = Datatable["Thirst"]
        Prepares[Passport]["route"] = Route
        vRP.setArmour(source,100)
        vRPC.SetHealth(source,200)
        vRP.UpgradeHunger(Passport,100)
        vRP.UpgradeThirst(Passport,100)
        vRP.DowngradeStress(Passport,100)
        TriggerEvent("inventory:saveTemporary", Passport)
        Datatable["Inventory"] = {}
        for Number,v in pairs(ArenaItens) do
            vRP.GenerateItem(Passport,Number,v,false)
        end
        TriggerEvent("vRP:BucketServer",source,"Enter",Route)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- APPLYTEMPORARY
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.ApplyTemporary(Passport,source)
    local source = source
    local Datatable = vRP.Datatable(Passport)
    local Ped = GetPlayerPed(source)
    if Prepares[Passport] and Datatable then
        Datatable["Inventory"] = {}
        Datatable["Inventory"] = Prepares[Passport]["Inventory"]
        Datatable["Stress"] = Prepares[Passport]["Stress"]
        Datatable["Hunger"] = Prepares[Passport]["Hunger"]
        Datatable["Thirst"] = Prepares[Passport]["Thirst"]

        TriggerClientEvent("hud:Thirst",source,Datatable["Thirst"])
        TriggerClientEvent("hud:Hunger",source,Datatable["Hunger"])
        TriggerClientEvent("hud:Stress",source,Datatable["Stress"])
    
        vRP.setArmour(source,Prepares[Passport]["Armour"])
        vRPC.SetHealth(source,Prepares[Passport]["Health"])
        TriggerEvent("inventory:applyTemporary",Passport)
        TriggerEvent("vRP:BucketServer",source,"Exit")
        Prepares[Passport] = nil
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINCHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.SkinCharacter(Passport,Hash)
    local Datatable = vRP.Datatable(Passport)
    if Datatable then
        Datatable["Skin"] = Hash
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PASSPORT
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Passport(source)
    if Characters[source] then
        return Characters[source]["id"]
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Players()
    return Sources
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SOURCE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Source(Passport)
    return Sources[parseInt(Passport)]
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DATATABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Datatable(Passport)
    if Characters[Sources[parseInt(Passport)]] then
        return Characters[Sources[parseInt(Passport)]]["table"]
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Kick(source,Reason)
    DropPlayer(source,Reason)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICKALL
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.KickALL()
    local List = vRP.Players()
    for _,Sources in pairs(List) do
        vRP.Kick(Sources,"Desconectado, a cidade reiniciou.")
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERDROPPED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("playerDropped",function(Reason)
    local source = source
    local Ped = GetPlayerPed(source)
    local Health = GetEntityHealth(Ped)
    local Armour = GetPedArmour(Ped)
    local Coords = GetEntityCoords(Ped)
    if Characters[source] and DoesEntityExist(Ped) then
        Disconnect(source,Health,Armour,Coords,Reason)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
function Disconnect(source,Health,Armour,Coords,Reason)
    local source = source
    local Passport = vRP.Passport(source)
    local Datatable = vRP.Datatable(Passport)
    if Passport then
        TriggerEvent("Discord","Disconnect","**Source:** "..source.."\n**Passaporte:** "..Passport.."\n**Health:** "..Health.."\n**Armour:** "..Armour.."\n**Cds:** "..Coords.."\n**Motivo:** "..Reason,3092790)
        if Datatable then
            if Prepares[Passport] then
                Datatable["Stress"] = Prepares[Passport]["Stress"]
                Datatable["Hunger"] = Prepares[Passport]["Hunger"]
                Datatable["Thirst"] = Prepares[Passport]["Thirst"]
                Datatable["Armour"] = Prepares[Passport]["Armour"]
                Datatable["Health"] = Prepares[Passport]["Health"]
                Datatable["Inventory"] = Prepares[Passport]["Inventory"]
                Datatable["Pos"] = { x = BackArenaPos["x"], y = BackArenaPos["y"], z = BackArenaPos["z"] }
                TriggerEvent("arena:Players","-",Prepares[Passport]["route"])
                Prepares[Passport] = nil
            else
                Datatable["Health"] = Health
                Datatable["Armour"] = Armour
                Datatable["Pos"] = { x = mathLength(Coords["x"]), y = mathLength(Coords["y"]), z = mathLength(Coords["z"]) }
            end
            if Datatable["Health"] <= 100 then
                TriggerClientEvent("hud:Textform",-1,Coords,"<b>Passaporte:</b> "..Passport.."<br><b>Motivo:</b> "..Reason,CombatLogMinutes * 60000)
            end
            TriggerEvent("Disconnect",Passport,source)
            vRP.Query("playerdata/SetData",{ Passport = Passport, dkey = "Datatable", dvalue = json.encode(Datatable) })
            Characters[source] = nil
            Sources[Passport] = nil
            GlobalState["SetDiscord"] = GetNumPlayerIndices()
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUEUE:CONNECTING
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Queue:Connecting",function(source,identifiers,deferrals)
    deferrals.defer()
    local Identity = vRP.Identities(source)
    if Identity then
        local Account = vRP.Account(Identity)
        if not Account then
            vRP.Query("accounts/newAccount",{ license = Identity })
        end
        if Maintenance then
            if MaintenanceLicenses[Identity] then
                deferrals.done()
            else
                deferrals.done(MaintenanceText)
            end
        elseif not vRP.Banned(Identity) then
            if Whitelisted then
                local Account = vRP.Account(Identity)
                if Account["whitelist"] then
                    deferrals.done()
                else
                    deferrals.done("Envie seu ID na sala liberação: "..Account["id"])
                end
            else
                deferrals.done()
            end
        else
            deferrals.done(BannedText..".")
        end
    else
        deferrals.done("Conexão perdida.")
    end
    TriggerEvent("Queue:Remove",identifiers)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERCHOSEN
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.CharacterChosen(source,Passport,Model)
    local source = source
    local Consult = vRP.Query("characters/Person",{ id = Passport })
    local Identity = vRP.Identities(source)
    local Account = vRP.Account(Identity)
    Sources[Passport] = source
    if not Characters[source] then
        Characters[source] = {}
        Characters[source]["bank"] = Consult[1]["bank"]
        Characters[source]["id"] = Consult[1]["id"]
        Characters[source]["sex"] = Consult[1]["sex"]
        Characters[source]["blood"] = Consult[1]["blood"]
        Characters[source]["phone"] = Consult[1]["phone"]
        Characters[source]["name"] = Consult[1]["name"]
        Characters[source]["name2"] = Consult[1]["name2"]
        Characters[source]["prison"] = Consult[1]["prison"]
        Characters[source]["medicplan"] = Consult[1]["medicplan"]
        Characters[source]["cardlimit"] = Consult[1]["cardlimit"]
        Characters[source]["spending"] = Consult[1]["spending"]
        Characters[source]["cardpassword"] = Consult[1]["cardpassword"]
        Characters[source]["license"] = Consult[1]["license"]
        Characters[source]["discord"] = Account["discord"]
        Characters[source]["chars"] = Account["chars"]
        Characters[source]["table"] = vRP.UserData(Passport,"Datatable")

        if Model then
            Characters[source]["table"]["Skin"] = Model
            Characters[source]["table"]["Inventory"] = {}
            for Number,v in pairs(CharacterItens) do
                vRP.GenerateItem(Passport,Number,v,false)
            end
            vRP.GiveBank(Passport,MoneyBank)
            vRP.Query("playerdata/SetData",{ Passport = Passport, dkey = "Datatable", dvalue = json.encode(Characters[source]["table"]) })
        end

        if 0 < Account["gems"] then
            TriggerClientEvent("hud:AddGems",source,Account["gems"])
        end

        TriggerEvent("Discord","Connect","**Source:** "..source.."\n**Passaporte:** "..Passport.."\n**Ip:** "..GetPlayerEndpoint(source),3092790)
        PerformHttpRequest(Discords["Login"], function(source,Passport,Model) end, "POST", json.encode({ username = ServerName, content = Account["discord"].." "..Passport.." "..Consult[1]["name"].." "..Consult[1]["name2"] }), { ["Content-Type"] = "application/json" })
    end

    TriggerEvent("CharacterChosen", Passport, source)
end