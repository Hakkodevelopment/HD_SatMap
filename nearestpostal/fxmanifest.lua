-- the postal map to read from
-- change it to whatever model you want that is in this directory
local postalFile = 'hd-postals.json'

--[[
WHAT EVER YOU DO, DON'T TOUCH ANYTHING BELOW UNLESS YOU **KNOW** WHAT YOU ARE DOING
If you just want to change the postal file, **ONLY** change the above variable
--]]
fx_version 'cerulean'
games { 'gta5' }

author 'blockba5her & Hakko'
description 'Nearest Postal Script by blockba5her modified for my SatMap'
version '1.4.2'

client_scripts {
	'config.lua',
	'cl.lua'
}
server_scripts {
	'config.lua',
	'sv.lua'
}

file(postalFile)
postal_file(postalFile)

file 'version.json'
