registerCommand("god", function(args)
    local targetID = tonumber(args[1])
    local target = vRP.Source(targetID)
	if target then
		vRP.UpgradeThirst(targetID,100)
		vRP.UpgradeHunger(targetID,100)
		vRP.DowngradeStress(targetID,100)
		vRP.Revive(target,200)
		TriggerClientEvent("hud:Active",targetID,true)
		TriggerClientEvent("paramedic:Reset",target)
	end
end)