-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("playerfire", cRP)
vSERVER = Tunnel.getInterface("playerfire")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Objects = {}
local part = false
local particleDictionary = "core"
local particleName = "ent_ray_meth_fires"
local loopAmount = 1
local model = "prop_rub_pile_04"
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTARGET
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    cleanObjects()
	for k,v in pairs(Position) do
        local ped = PlayerPedId()
        FreezeEntityPosition(ped, false)
        createModels(k, model, v[1],v[2],v[3])
		exports["target"]:AddCircleZone("playerFire:"..k,vector3(v[1],v[2],v[3]+1),1,{
			name = "playerFire:"..k,
			heading = 3374176
		},{
			shop = k,
			Distance = 3.0,
			options = {
				{
					event = "playerFire:PutPlayer",
					label = "Colocar jogador próximo",
					tunnel = "police"
				},
				{
					event = "playerFire:StartFire",
					label = "Incendiar",
					tunnel = "police"
				}
			}
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CREATEMODELS
-----------------------------------------------------------------------------------------------------------------------------------------
function createModels(Number,model,x,y,z)
	local mHash = GetHashKey(model)
	RequestModel(mHash)
	while not HasModelLoaded(mHash) do
		Wait(1)
	end
	Objects[Number] = CreateObject(mHash,x,y,z-1.0,false,false,false)
	--[[ PlaceObjectOnGroundProperly(Objects[Number]) ]]
	FreezeEntityPosition(Objects[Number],true)
	SetModelAsNoLongerNeeded(mHash)
	SetEntityLodDist(Objects[Number],0xFFFF)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEANOBJECTS
-----------------------------------------------------------------------------------------------------------------------------------------
function cleanObjects()
	for k,objects in pairs(Objects) do
		if DoesEntityExist(objects) then
			DeleteEntity(objects)
			Objects[k] = nil
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERFIRE:PUTPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("playerFire:StartFire")
AddEventHandler("playerFire:StartFire",function(Index)
	if Objects[Index] then
		continue = true
		local Coords = GetEntityCoords(v)
		if not HasNamedPtfxAssetLoaded(particleDictionary) then
			RequestNamedPtfxAsset(particleDictionary)
			while not HasNamedPtfxAssetLoaded(particleDictionary) do
				Wait(10)
			end
		end
		local Particle
		if continue == true then
			UseParticleFxAssetNextCall(particleDictionary)
			Particle = StartParticleFxLoopedOnEntity(particleName, Objects[Index], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.55, 0, 0, 0)
		end
		Wait(10000)
		continue = false
		StopParticleFxLooped(Particle)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ath ip
-----------------------------------------------------------------------------------------------------------------------------------------
