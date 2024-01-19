fx_version 'cerulean'

game 'gta5'

author 'Primordial Studio'

version '1.0.0'

description 'Advanced Car Rental System for Prime World'

lua54 'yes'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'shared/config.lua',
    'shared/framework.lua',
    'shared/translations.lua',
}

client_scripts {
    'client/main.lua',
    'client/modules/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/modules/*.lua',
}

dependencies {
    '/server:6000',
    '/onesync',
    'oxmysql',
    '/gameBuild:mpchristmas3',
    'ox_lib'
}