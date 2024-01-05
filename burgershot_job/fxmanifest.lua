-- SAMME FRAMEWORK --

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'samme69 @discord'
description 'Burgershot Jobb'
version '1.0.0'

client_scripts {
    'client/cl_main.lua',
    'client/lib_menu.lua' -- OX_LIB Meny
}

server_scripts {
    'server/sv_main.lua',
}

shared_script {
    '@ox_lib/init.lua',
    'config.lua'
}

dependencies {
    'es_extended', -- Base
    'ox_lib', -- OX lib
    'ox_target', -- Target
    'ox_inventory' -- Inventory
}