fx_version "adamant"
game "gta5"
lua54 'yes'


shared_scripts {
   "@vrp/lib/utils.lua",
   "config.lua",
}

server_scripts {
   "server.lua",
}

client_scripts {
   "client.lua",
}

files {
   "nui/**/*",
}

escrow_ignore {
   'config.lua',
   'utils.lua'
}


ui_page "nui/index.html"