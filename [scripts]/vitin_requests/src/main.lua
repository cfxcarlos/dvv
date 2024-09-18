---@diagnostic disable-next-line: deprecated
local Tunnel = module("vrp","lib/Tunnel")
---@diagnostic disable-next-line: deprecated
local Proxy = module("vrp","lib/Proxy")
---@diagnostic disable-next-line: undefined-field
vRP = Proxy.getInterface("vRP")
---@diagnostic disable-next-line: undefined-field
vRPclient = Tunnel.getInterface("vRP")
vCLIENT = Tunnel.getInterface("admin")
local availableCommands = {}

---@param invoke string O comando em si (ex: /addcar)
---@param handler fun(args: string[]) A função que vai ser executada quando o comando for chamado
function registerCommand(invoke, handler)
    availableCommands[invoke] = {
		handle = handler
    }
end

---@param invoke string O comando em si (ex: /addcar)
---@param args string[] Os argumentos do comando (ex: /addcar 1 panto, o invoke é /addcar e os args são 1 e panto)
local function handleCommand(invoke, args)
	if not availableCommands[invoke] then
		print("^3[AVISO]^0", "O comando ^2" .. invoke .. "^0 não existe")
		return
	end
	availableCommands[invoke].handle(args)
end

vRP.Prepare("vitin_requests/getPendingRequests", "SELECT id, command FROM vitin_requests")
vRP.Prepare("vitin_requests/removeRequest", "DELETE FROM vitin_requests WHERE id = @id")

Citizen.CreateThread(function()
    while true do
        local results = vRP.Query("vitin_requests/getPendingRequests", {})
        for _, v in pairs(results) do
            local invoke = string.match(v.command, "([^%s]+)")
			local args = {}
            for arg in string.gmatch(v.command, "%S+") do
                table.insert(args, arg)
            end
			table.remove(args, 1)
			handleCommand(invoke, args)
			vRP.Query("vitin_requests/removeRequest", { id = v.id })
		end
		Wait(10000)
	end
end)
