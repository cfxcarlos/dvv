-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("badge:Show")
AddEventHandler("badge:Show",function(rank,name,callsign)
    SendNUIMessage({ show = true, infos = { picture = "https://cdn.discordapp.com/attachments/1210781682328805497/1219333792003653632/man.png?ex=660aec16&is=65f87716&hm=98dc2a4831a3d8154dada0c0180287366a4ff641a3421c7dbda52b25bb44046b&", rank = rank, name = name,  callsign = callsign }})
end)