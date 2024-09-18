lua54 'on'
fx_version "bodacious"
game "gta5"
client_scripts {
	"config.lua",
	"@vrp/lib/utils.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua"
} 

dependency '/assetpacks'