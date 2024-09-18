-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("initial",Creative)
vSERVER = Tunnel.getInterface("initial")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INITIAL:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Open()
	SetNuiFocus(true,true)
	SetCursorLocation(0.5,0.5)
	-- TriggerEvent("hud:Active",false)
	SendNUIMessage({ name = "Open" })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Save",function(Data,Callback)
	SetNuiFocus(false,false)
	vSERVER.Save(Data["name"])
	-- TriggerEvent("hud:Active",true)
	Callback("Save")
end)