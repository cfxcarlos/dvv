

fx_version 'bodacious'
game 'gta5'

description 'rcore spray'

version '1.1.0'

-- https://discord.gg/BkKyK7cJ5j

client_scripts {
	"@vrp/lib/utils.lua",
	'config.lua',
	'client/warmenu.lua',
	'client/fonts.lua',
	'client/determinant.lua',
	'client/raycast.lua',
	'client/client.lua',
	'client/spray_rotation.lua',
	'client/control.lua',
	'client/remove.lua',
	'client/time.lua',
	'client/cancellable_progress.lua',
}

server_scripts {
	"@vrp/lib/utils.lua",
	'config.lua',
	'@mysql-async/lib/MySQL.lua',
--	'server/db.lua',
	'server/server.lua',
	'server/remove.lua',
}

