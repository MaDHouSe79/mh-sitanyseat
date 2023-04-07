--[[ ===================================================== ]]--
--[[               MH Sit Any Seat by MaDHouSe             ]]--
--[[ ===================================================== ]]--

fx_version 'cerulean'
games { 'gta5' }

author 'MaDHouSe'
description 'MH Sit In Any Vehicle Seat.'
version '1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    '@qb-core/shared/vehicles.lua',
    'locales/nl.lua', -- change en to your language
    'config.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/update.lua',
}


dependencies {
    'qb-core',
}

lua54 'yes'
