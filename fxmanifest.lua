fx_version 'cerulean'
game 'gta5'

description 'Elite Vending Job'
version '1.0.0'

shared_scripts {
    'config.lua',
	'@qb-core/shared/locale.lua',
    'locales/en.lua' -- Change this to your preferred language
}
client_scripts {
	'client/client.lua',
	'client/ped.lua',
	'client/targets.lua'
}
server_scripts {
	'server/server.lua'
}

lua54 'yes'