registerCommand("limbo", function(args)
    local targetID = tonumber(args[1])
    local target = vRP.Source(targetID)
	if target then
		vCLIENT.teleportLimbo(target)
	end
end)