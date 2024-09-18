

fx_version 'adamant'
game {'gta5'}
author 'Toddy'
lua54 'yes'
server_scripts {
	"@vrp/lib/Utils.lua",
	"server-side/server.lua"
}
shared_script {
	"shared-side/*"
}

client_scripts {
	"@vrp/lib/Utils.lua",
	"client-side/client.lua"
}
              