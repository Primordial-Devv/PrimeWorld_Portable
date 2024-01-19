--[[
	Please read carefully.
	In case you use qb-core, you must use your shared in qb-core,
	not this shared, this section is exclusive for esx!

	However, you can copy all the items from here for your convenience!

    ['example_item'] =  {
        ['name'] =  'example_item',
        ['label'] =  'Label item',
        ['weight'] =  200, -- Weight in kg
        ['type'] =  'item', -- 'item' or 'weapon'
        ['image'] =  'example_item.png', -- image name on html/images/example_item.png
        ['unique'] =  false, -- Can stack the item?
        ['useable'] =  true, -- true = You can use, false = You can't use
        ['shouldClose'] =  true, -- Close the inventory when use
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat', -- Label on metadata (inventory)
        ["created"] = nil, -- Don't touch (Depenendy of decay)
        ["decay"] = 0.01,  -- The higher the number, the faster it breaks, the lower the opposite.
        ["delete"] = false -- true if you want it to be removed once broken, if it's false it stays broken in your inventory


        The next level is the consumables, you can use esx_basicneeds
        or qb-smallresources, but the native way will always be better,
        since it will avoid a series of item dupes and its functionality
        will be completely direct.

        ['client'] = {
            status = {
                thirst = 200000, -- or hunger
            },
            usetime = 2500, -- Progressbar timer
            anim = {
                animDict = 'mp_player_intdrink', -- Animations
                anim = 'loop_bottle' -- Animations
            },
            prop = {
                model = 'p_wine_glass_s', -- Animation prop
                coords = vec3(0.02, 0.02, -0.08), -- Prop coords
                rotation = vec3(0.0, 0.0, 0.0) -- Prop Rotation
            },
            disable = {
                disableMovement = true, -- Disable events
                disableCarMovement = true, -- Disable events
                disableMouse = false, -- Disable events
                disableCombat = true, -- Disable events
            },
            removeAfterUse = true -- Remove after use item?
        }
    },
]]

ItemList = {
    -- Melee
    ['weapon_unarmed']               = {
        ['name'] = 'weapon_unarmed',
        ['label'] = 'Fists',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'placeholder.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'Fisticuffs'
    },
    ['weapon_dagger']                = {
        ['name'] = 'weapon_dagger',
        ['label'] = 'Dagger',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_dagger.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A short knife with a pointed and edged blade, used as a weapon'
    },
    ['weapon_bat']                   = {
        ['name'] = 'weapon_bat',
        ['label'] = 'Bat',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_bat.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'Used for hitting a ball in sports (or other things)'
    },
    ['weapon_bottle']                = {
        ['name'] = 'weapon_bottle',
        ['label'] = 'Broken Bottle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_bottle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A broken bottle'
    },
    ['weapon_crowbar']               = {
        ['name'] = 'weapon_crowbar',
        ['label'] = 'Crowbar',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_crowbar.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An iron bar with a flattened end, used as a lever'
    },
    ['weapon_flashlight']            = {
        ['name'] = 'weapon_flashlight',
        ['label'] = 'Flashlight',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_flashlight.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A battery-operated portable light'
    },
    ['weapon_golfclub']              = {
        ['name'] = 'weapon_golfclub',
        ['label'] = 'Golfclub',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_golfclub.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A club used to hit the ball in golf'
    },
    ['weapon_hammer']                = {
        ['name'] = 'weapon_hammer',
        ['label'] = 'Hammer',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_hammer.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'
    },
    ['weapon_hatchet']               = {
        ['name'] = 'weapon_hatchet',
        ['label'] = 'Hatchet',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_hatchet.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A small axe with a short handle for use in one hand'
    },
    ['weapon_knuckle']               = {
        ['name'] = 'weapon_knuckle',
        ['label'] = 'Knuckle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_knuckle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'
    },
    ['weapon_knife']                 = {
        ['name'] = 'weapon_knife',
        ['label'] = 'Knife',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_knife.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'
    },
    ['weapon_machete']               = {
        ['name'] = 'weapon_machete',
        ['label'] = 'Machete',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_machete.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A broad, heavy knife used as a weapon'
    },
    ['weapon_switchblade']           = {
        ['name'] = 'weapon_switchblade',
        ['label'] = 'Switchblade',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_switchblade.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'
    },
    ['weapon_nightstick']            = {
        ['name'] = 'weapon_nightstick',
        ['label'] = 'Nightstick',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_nightstick.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A police officer\'s club or billy'
    },
    ['weapon_wrench']                = {
        ['name'] = 'weapon_wrench',
        ['label'] = 'Wrench',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_wrench.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'
    },
    ['weapon_battleaxe']             = {
        ['name'] = 'weapon_battleaxe',
        ['label'] = 'Battle Axe',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_battleaxe.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A large broad-bladed axe used in ancient warfare'
    },
    ['weapon_poolcue']               = {
        ['name'] = 'weapon_poolcue',
        ['label'] = 'Poolcue',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_poolcue.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A stick used to strike a ball, usually the cue ball (or other things)'
    },
    ['weapon_briefcase']             = {
        ['name'] = 'weapon_briefcase',
        ['label'] = 'Briefcase',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_briefcase.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A briefcase for storing important documents'
    },
    ['weapon_briefcase_02']          = {
        ['name'] = 'weapon_briefcase_02',
        ['label'] = 'Suitcase',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_briefcase2.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'Wonderfull for nice vacation to Liberty City'
    },
    ['weapon_garbagebag']            = {
        ['name'] = 'weapon_garbagebag',
        ['label'] = 'Garbage Bag',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_garbagebag.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A garbage bag'
    },
    ['weapon_handcuffs']             = {
        ['name'] = 'weapon_handcuffs',
        ['label'] = 'Handcuffs',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_handcuffs.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'
    },
    ['weapon_bread']                 = {
        ['name'] = 'weapon_bread',
        ['label'] = 'Baquette',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'baquette.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'Bread...?'
    },
    ['weapon_stone_hatchet']         = {
        ['name'] = 'weapon_stone_hatchet',
        ['label'] = 'Stone Hatchet',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_stone_hatchet.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Stone ax'
    },

    -- Handguns
    ['weapon_pistol']                = {
        ['name'] = 'weapon_pistol',
        ['label'] = 'Walther P99',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_pistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A small firearm designed to be held in one hand'
    },
    ['weapon_pistol_mk2']            = {
        ['name'] = 'weapon_pistol_mk2',
        ['label'] = 'Pistol Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_pistol_mk2.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An upgraded small firearm designed to be held in one hand'
    },
    ['weapon_pistolxm3']             = {
        ['name'] = 'weapon_pistolxm3',
        ['label'] = 'WM 29 Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_pistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A small firearm designed to be held in one hand'
    },
    ['weapon_combatpistol']          = {
        ['name'] = 'weapon_combatpistol',
        ['label'] = 'Combat Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_combatpistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A combat version small firearm designed to be held in one hand'
    },
    ['weapon_appistol']              = {
        ['name'] = 'weapon_appistol',
        ['label'] = 'AP Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_appistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A small firearm designed to be held in one hand that is automatic'
    },
    ['weapon_stungun']               = {
        ['name'] = 'weapon_stungun',
        ['label'] = 'Taser',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_stungun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'
    },
    ['weapon_pistol50']              = {
        ['name'] = 'weapon_pistol50',
        ['label'] = 'Pistol .50',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_pistol50.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A .50 caliber firearm designed to be held with both hands'
    },
    ['weapon_snspistol']             = {
        ['name'] = 'weapon_snspistol',
        ['label'] = 'SNS Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_snspistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A very small firearm designed to be easily concealed'
    },
    ['weapon_heavypistol']           = {
        ['name'] = 'weapon_heavypistol',
        ['label'] = 'Heavy Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_heavypistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'
    },
    ['weapon_vintagepistol']         = {
        ['name'] = 'weapon_vintagepistol',
        ['label'] = 'Vintage Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_vintagepistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An antique firearm designed to be held in one hand'
    },
    ['weapon_flaregun']              = {
        ['name'] = 'weapon_flaregun',
        ['label'] = 'Flare Gun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_FLARE',
        ['image'] = 'weapon_flaregun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A handgun for firing signal rockets'
    },
    ['weapon_marksmanpistol']        = {
        ['name'] = 'weapon_marksmanpistol',
        ['label'] = 'Marksman Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_marksmanpistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A very accurate small firearm designed to be held in one hand'
    },
    ['weapon_revolver']              = {
        ['name'] = 'weapon_revolver',
        ['label'] = 'Revolver',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_revolver.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'
    },
    ['weapon_revolver_mk2']          = {
        ['name'] = 'weapon_revolver_mk2',
        ['label'] = 'Violence',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_revolver_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'da Violence'
    },
    ['weapon_doubleaction']          = {
        ['name'] = 'weapon_doubleaction',
        ['label'] = 'Double Action Revolver',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_doubleaction.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Double Action Revolver'
    },
    ['weapon_snspistol_mk2']         = {
        ['name'] = 'weapon_snspistol_mk2',
        ['label'] = 'SNS Pistol Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_snspistol_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'SNS Pistol MK2'
    },
    ['weapon_raypistol']             = {
        ['name'] = 'weapon_raypistol',
        ['label'] = 'Up-n-Atomizer',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_raypistol.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Raypistol'
    },
    ['weapon_ceramicpistol']         = {
        ['name'] = 'weapon_ceramicpistol',
        ['label'] = 'Ceramic Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_ceramicpistol.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Ceramicpistol'
    },
    ['weapon_navyrevolver']          = {
        ['name'] = 'weapon_navyrevolver',
        ['label'] = 'Navy Revolver',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_navyrevolver.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Navyrevolver'
    },
    ['weapon_gadgetpistol']          = {
        ['name'] = 'weapon_gadgetpistol',
        ['label'] = 'Perico Pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_gadgetpistol.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Gadgetpistol'
    },

    -- Submachine Guns
    ['weapon_microsmg']              = {
        ['name'] = 'weapon_microsmg',
        ['label'] = 'Micro SMG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_microsmg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A handheld lightweight machine gun'
    },
    ['weapon_smg']                   = {
        ['name'] = 'weapon_smg',
        ['label'] = 'SMG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_smg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A handheld lightweight machine gun'
    },
    ['weapon_smg_mk2']               = {
        ['name'] = 'weapon_smg_mk2',
        ['label'] = 'SMG Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_smg_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'SMG MK2'
    },
    ['weapon_assaultsmg']            = {
        ['name'] = 'weapon_assaultsmg',
        ['label'] = 'Assault SMG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_assaultsmg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An assault version of a handheld lightweight machine gun'
    },
    ['weapon_combatpdw']             = {
        ['name'] = 'weapon_combatpdw',
        ['label'] = 'Combat PDW',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_combatpdw.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A combat version of a handheld lightweight machine gun'
    },
    ['weapon_machinepistol']         = {
        ['name'] = 'weapon_machinepistol',
        ['label'] = 'Tec-9',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_machinepistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A self-loading pistol capable of burst or fully automatic fire'
    },
    ['weapon_minismg']               = {
        ['name'] = 'weapon_minismg',
        ['label'] = 'Mini SMG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_minismg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A mini handheld lightweight machine gun'
    },
    ['weapon_raycarbine']            = {
        ['name'] = 'weapon_raycarbine',
        ['label'] = 'Unholy Hellbringer',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'weapon_raycarbine.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Raycarbine'
    },

    -- Shotguns
    ['weapon_pumpshotgun']           = {
        ['name'] = 'weapon_pumpshotgun',
        ['label'] = 'Pump Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_pumpshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A pump-action smoothbore gun for firing small shot at short range'
    },
    ['weapon_sawnoffshotgun']        = {
        ['name'] = 'weapon_sawnoffshotgun',
        ['label'] = 'Sawn-off Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_sawnoffshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'
    },
    ['weapon_assaultshotgun']        = {
        ['name'] = 'weapon_assaultshotgun',
        ['label'] = 'Assault Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_assaultshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'
    },
    ['weapon_bullpupshotgun']        = {
        ['name'] = 'weapon_bullpupshotgun',
        ['label'] = 'Bullpup Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_bullpupshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A compact smoothbore gun for firing small shot at short range'
    },
    ['weapon_musket']                = {
        ['name'] = 'weapon_musket',
        ['label'] = 'Musket',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_musket.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'
    },
    ['weapon_heavyshotgun']          = {
        ['name'] = 'weapon_heavyshotgun',
        ['label'] = 'Heavy Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_heavyshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A large smoothbore gun for firing small shot at short range'
    },
    ['weapon_dbshotgun']             = {
        ['name'] = 'weapon_dbshotgun',
        ['label'] = 'Double-barrel Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_dbshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'
    },
    ['weapon_autoshotgun']           = {
        ['name'] = 'weapon_autoshotgun',
        ['label'] = 'Auto Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_autoshotgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A shotgun capable of rapid continous fire'
    },
    ['weapon_pumpshotgun_mk2']       = {
        ['name'] = 'weapon_pumpshotgun_mk2',
        ['label'] = 'Pumpshotgun Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_pumpshotgun_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Pumpshotgun MK2'
    },
    ['weapon_combatshotgun']         = {
        ['name'] = 'weapon_combatshotgun',
        ['label'] = 'Combat Shotgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'weapon_combatshotgun.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Combatshotgun'
    },

    -- Assault Rifles
    ['weapon_assaultrifle']          = {
        ['name'] = 'weapon_assaultrifle',
        ['label'] = 'Assault Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_assaultrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'
    },
    ['weapon_assaultrifle_mk2']      = {
        ['name'] = 'weapon_assaultrifle_mk2',
        ['label'] = 'Assault Rifle Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_assaultrifle_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Assault Rifle MK2'
    },
    ['weapon_carbinerifle']          = {
        ['name'] = 'weapon_carbinerifle',
        ['label'] = 'Carbine Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_carbinerifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A lightweight automatic rifle'
    },
    ['weapon_tacticalrifle']         = {
        ['name'] = 'weapon_tacticalrifle',
        ['label'] = 'Tactical Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_tacticalrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A lightweight automatic rifle'
    },
    ['weapon_carbinerifle_mk2']      = {
        ['name'] = 'weapon_carbinerifle_mk2',
        ['label'] = 'Carbine Rifle Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_carbinerifle_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Carbine Rifle MK2'
    },
    ['weapon_advancedrifle']         = {
        ['name'] = 'weapon_advancedrifle',
        ['label'] = 'Advanced Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_advancedrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'
    },
    ['weapon_specialcarbine']        = {
        ['name'] = 'weapon_specialcarbine',
        ['label'] = 'Special Carbine',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_specialcarbine.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An extremely versatile assault rifle for any combat situation'
    },
    ['weapon_bullpuprifle']          = {
        ['name'] = 'weapon_bullpuprifle',
        ['label'] = 'Bullpup Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_bullpuprifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A compact automatic assault rifle'
    },
    ['weapon_compactrifle']          = {
        ['name'] = 'weapon_compactrifle',
        ['label'] = 'Compact Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_compactrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A compact version of an assault rifle'
    },
    ['weapon_specialcarbine_mk2']    = {
        ['name'] = 'weapon_specialcarbine_mk2',
        ['label'] = 'Special Carbine Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_specialcarbine_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Wpecialcarbine MK2'
    },
    ['weapon_bullpuprifle_mk2']      = {
        ['name'] = 'weapon_bullpuprifle_mk2',
        ['label'] = 'Bullpup Rifle Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_bullpuprifle_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Bull Puprifle MK2'
    },
    ['weapon_militaryrifle']         = {
        ['name'] = 'weapon_militaryrifle',
        ['label'] = 'Military Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_militaryrifle.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Militaryrifle'
    },

    -- Light Machine Guns
    ['weapon_mg']                    = {
        ['name'] = 'weapon_mg',
        ['label'] = 'Machinegun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_MG',
        ['image'] = 'weapon_mg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'
    },
    ['weapon_combatmg']              = {
        ['name'] = 'weapon_combatmg',
        ['label'] = 'Combat MG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_MG',
        ['image'] = 'weapon_combatmg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'
    },
    ['weapon_gusenberg']             = {
        ['name'] = 'weapon_gusenberg',
        ['label'] = 'Thompson SMG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_MG',
        ['image'] = 'weapon_gusenberg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An automatic rifle commonly referred to as a tommy gun'
    },
    ['weapon_combatmg_mk2']          = {
        ['name'] = 'weapon_combatmg_mk2',
        ['label'] = 'Combat MG Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_MG',
        ['image'] = 'weapon_combatmg_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Combatmg MK2'
    },

    -- Sniper Rifles
    ['weapon_sniperrifle']           = {
        ['name'] = 'weapon_sniperrifle',
        ['label'] = 'Sniper Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'weapon_sniperrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A high-precision, long-range rifle'
    },
    ['weapon_heavysniper']           = {
        ['name'] = 'weapon_heavysniper',
        ['label'] = 'Heavy Sniper',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'weapon_heavysniper.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An upgraded high-precision, long-range rifle'
    },
    ['weapon_marksmanrifle']         = {
        ['name'] = 'weapon_marksmanrifle',
        ['label'] = 'Marksman Rifle',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'weapon_marksmanrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A very accurate single-fire rifle'
    },
    ['weapon_remotesniper']          = {
        ['name'] = 'weapon_remotesniper',
        ['label'] = 'Remote Sniper',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER_REMOTE',
        ['image'] = 'weapon_remotesniper.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A portable high-precision, long-range rifle'
    },
    ['weapon_heavysniper_mk2']       = {
        ['name'] = 'weapon_heavysniper_mk2',
        ['label'] = 'Heavy Sniper Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'weapon_heavysniper_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Heavysniper MK2'
    },
    ['weapon_marksmanrifle_mk2']     = {
        ['name'] = 'weapon_marksmanrifle_mk2',
        ['label'] = 'Marksman Rifle Mk II',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'weapon_marksmanrifle_mk2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Marksmanrifle MK2'
    },

    -- Heavy Weapons
    ['weapon_rpg']                   = {
        ['name'] = 'weapon_rpg',
        ['label'] = 'RPG',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RPG',
        ['image'] = 'weapon_rpg.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A rocket-propelled grenade launcher'
    },
    ['weapon_grenadelauncher']       = {
        ['name'] = 'weapon_grenadelauncher',
        ['label'] = 'Grenade Launcher',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_GRENADELAUNCHER',
        ['image'] = 'weapon_grenadelauncher.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'
    },
    ['weapon_grenadelauncher_smoke'] = {
        ['name'] = 'weapon_grenadelauncher_smoke',
        ['label'] = 'Smoke Grenade Launcher',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_GRENADELAUNCHER',
        ['image'] = 'weapon_smokegrenade.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A bomb that produces a lot of smoke when it explodes'
    },
    ['weapon_minigun']               = {
        ['name'] = 'weapon_minigun',
        ['label'] = 'Minigun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_MINIGUN',
        ['image'] = 'weapon_minigun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'
    },
    ['weapon_firework']              = {
        ['name'] = 'weapon_firework',
        ['label'] = 'Firework Launcher',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_firework.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'
    },
    ['weapon_railgun']               = {
        ['name'] = 'weapon_railgun',
        ['label'] = 'Railgun',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_railgun.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'
    },
    ['weapon_hominglauncher']        = {
        ['name'] = 'weapon_hominglauncher',
        ['label'] = 'Homing Launcher',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_STINGER',
        ['image'] = 'weapon_hominglauncher.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'
    },
    ['weapon_compactlauncher']       = {
        ['name'] = 'weapon_compactlauncher',
        ['label'] = 'Compact Launcher',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_compactlauncher.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A compact grenade launcher'
    },
    ['weapon_rayminigun']            = {
        ['name'] = 'weapon_rayminigun',
        ['label'] = 'Widowmaker',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_MINIGUN',
        ['image'] = 'weapon_rayminigun.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Rayminigun'
    },

    -- Throwables
    ['weapon_grenade']               = {
        ['name'] = 'weapon_grenade',
        ['label'] = 'Grenade',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_grenade.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A handheld throwable bomb'
    },
    ['weapon_bzgas']                 = {
        ['name'] = 'weapon_bzgas',
        ['label'] = 'BZ Gas',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_bzgas.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A cannister of gas that causes extreme pain'
    },
    ['weapon_molotov']               = {
        ['name'] = 'weapon_molotov',
        ['label'] = 'Molotov',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_molotov.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'
    },
    ['weapon_stickybomb']            = {
        ['name'] = 'weapon_stickybomb',
        ['label'] = 'C4',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_stickybomb.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'
    },
    ['weapon_proxmine']              = {
        ['name'] = 'weapon_proxmine',
        ['label'] = 'Proxmine Grenade',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_proximitymine.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A bomb placed on the ground that detonates when going within its proximity'
    },
    ['weapon_snowball']              = {
        ['name'] = 'weapon_snowball',
        ['label'] = 'Snowball',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_snowball.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'
    },
    ['weapon_pipebomb']              = {
        ['name'] = 'weapon_pipebomb',
        ['label'] = 'Pipe Bomb',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_pipebomb.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A homemade bomb, the components of which are contained in a pipe'
    },
    ['weapon_ball']                  = {
        ['name'] = 'weapon_ball',
        ['label'] = 'Ball',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_BALL',
        ['image'] = 'weapon_ball.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'
    },
    ['weapon_smokegrenade']          = {
        ['name'] = 'weapon_smokegrenade',
        ['label'] = 'Smoke Grenade',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_c4.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'An explosive charge that can be remotely detonated'
    },
    ['weapon_flare']                 = {
        ['name'] = 'weapon_flare',
        ['label'] = 'Flare pistol',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_FLARE',
        ['image'] = 'weapon_flare.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A small pyrotechnic devices used for illumination and signalling'
    },

    -- Miscellaneous
    ['weapon_petrolcan']             = {
        ['name'] = 'weapon_petrolcan',
        ['label'] = 'Petrol Can',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PETROLCAN',
        ['image'] = 'weapon_petrolcan.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A robust liquid container made from pressed steel'
    },
    ['weapon_fireextinguisher']      = {
        ['name'] = 'weapon_fireextinguisher',
        ['label'] = 'Fire Extinguisher',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_fireextinguisher.png',
        ['unique'] = true,
        ['useable'] = false,
        ['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'
    },
    ['weapon_hazardcan']             = {
        ['name'] = 'weapon_hazardcan',
        ['label'] = 'Hazardous Jerry Can',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PETROLCAN',
        ['image'] = 'weapon_hazardcan.png',
        ['unique'] = true,
        ['useable'] = true,
        ['description'] = 'Weapon Hazardcan'
    },

    -- Custom Weapons NoobySloth (it is possible that some weapon is broken)
    -- ref: https://github.com/NoobySloth/Custom-Weapons
    ['weapon_ak47']                  = {
        ['name'] = 'weapon_ak47',
        ['label'] = 'AK-47',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_assaultrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'
    },

    ['weapon_de']                    = {
        ['name'] = 'weapon_de',
        ['label'] = 'Desert Eagle',
        ['weight'] = 8000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'deagle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A .50 caliber firearm designed to be held with both hands'
    },

    ['weapon_fnx45']                 = {
        ['name'] = 'weapon_fnx45',
        ['label'] = 'FN FNX-45',
        ['weight'] = 7000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'weapon_combat-pistol.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A combat version small firearm designed to be held in one hand'
    },

    ['weapon_glock17']               = {
        ['name'] = 'weapon_glock17',
        ['label'] = 'PD Glock 17',
        ['weight'] = 7000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'glock-17.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'PD GUN'
    },

    ['weapon_m4']                    = {
        ['name'] = 'weapon_m4',
        ['label'] = 'PD M4A1',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_carbinerifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A lightweight automatic rifle for the Police'
    },

    ['weapon_m9']                    = {
        ['name'] = 'weapon_m9',
        ['label'] = 'Beretta M9A3',
        ['weight'] = 7000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'm1911.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A M91'
    },

    ['weapon_m70']                   = {
        ['name'] = 'weapon_m70',
        ['label'] = 'M70',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'm70.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'
    },

    ['weapon_m1911']                 = {
        ['name'] = 'weapon_m1911',
        ['label'] = 'M1911',
        ['weight'] = 7000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'browning.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'
    },

    ['weapon_uzi']                   = {
        ['name'] = 'weapon_uzi',
        ['label'] = 'UZI',
        ['weight'] = 10000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'uzi.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A handheld lightweight machine gun'
    },

    ['weapon_mac10']                 = {
        ['name'] = 'weapon_mac10',
        ['label'] = 'MAC-10',
        ['weight'] = 10000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'mac-10.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A handheld lightweight machine gun'
    },

    ['weapon_mossberg']              = {
        ['name'] = 'weapon_mossberg',
        ['label'] = 'Mossberg 500',
        ['weight'] = 10000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'mossberg500.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'
    },

    ['weapon_remington']             = {
        ['name'] = 'weapon_remington',
        ['label'] = 'Remington 870',
        ['weight'] = 8000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SHOTGUN',
        ['image'] = 'remington.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A pump-action smoothbore gun for firing small shot at short range'
    },

    ['weapon_scarh']                 = {
        ['name'] = 'weapon_scarh',
        ['label'] = 'PD SCAR-H',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'scar.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'An extremely versatile assault rifle for any combat situation'
    },

    ['weapon_shiv']                  = {
        ['name'] = 'weapon_shiv',
        ['label'] = 'Shiv',
        ['weight'] = 3000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'shiv.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'
    },

    ['weapon_ar15']                  = {
        ['name'] = 'weapon_ar15',
        ['label'] = 'PD AR-15',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_mcx.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A lightweight automatic rifle for the Police'
    },

    ['weapon_mk14']                  = {
        ['name'] = 'weapon_mk14',
        ['label'] = 'PD MK14',
        ['weight'] = 23000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'mk14.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A very accurate single-fire rifle'
    },

    ['weapon_huntingrifle']          = {
        ['name'] = 'weapon_huntingrifle',
        ['label'] = 'Hunting Rifle',
        ['weight'] = 23000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = 'huntingrifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A very accurate Rifle for hunting'
    },

    ['weapon_katana']                = {
        ['name'] = 'weapon_katana',
        ['label'] = 'Katana',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'katana.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A single-edged sword that is the longer of a pair worn by the Japanese samurai.'
    },

    ['weapon_sledgehammer']          = {
        ['name'] = 'weapon_sledgehammer',
        ['label'] = 'Sledge Hammer',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'sledgehammer.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A Sledge Hammer to destroy peoples heads'
    },

    ['weapon_mp9']                   = {
        ['name'] = 'weapon_mp9',
        ['label'] = 'MP9',
        ['weight'] = 10000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = '???',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['decay'] = 30.0,
        ['description'] = 'A handheld lightweight machine gun'
    },

    ['weapon_m110']                  = {
        ['name'] = 'weapon_m110',
        ['label'] = 'M110',
        ['weight'] = 23000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SNIPER',
        ['image'] = '???',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['decay'] = 30.0,
        ['description'] = 'A very accurate single-fire rifle'
    },

    ['weapon_hk416']                 = {
        ['name'] = 'weapon_hk416',
        ['label'] = 'HK-416',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_carbinerifle.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['decay'] = 30.0,
        ['description'] = 'A lightweight automatic rifle'
    },

    ['weapon_ak74']                  = {
        ['name'] = 'weapon_ak74',
        ['label'] = 'AK-74',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_ak74.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'
    },

    ['weapon_aks74']                 = {
        ['name'] = 'weapon_aks74',
        ['label'] = 'AK-S74',
        ['weight'] = 13000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_RIFLE',
        ['image'] = 'weapon_aks74.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'
    },

    ['weapon_glock18c']              = {
        ['name'] = 'weapon_glock18c',
        ['label'] = 'Glock 18C',
        ['weight'] = 7000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'glock-18c.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'semi automatic pistol'
    },

    ['weapon_glock22']               = {
        ['name'] = 'weapon_glock22',
        ['label'] = 'Glock 22',
        ['weight'] = 7000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_PISTOL',
        ['image'] = 'glock-22.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'pistol'
    },

    ['weapon_mp5']                   = {
        ['name'] = 'weapon_mp5',
        ['label'] = 'H&K MP5',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = 'AMMO_SMG',
        ['image'] = 'MP5.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A handheld lightweight machine gun'
    },

    ['weapon_colbaton']              = {
        ['name'] = 'weapon_colbaton',
        ['label'] = 'PD Baton',
        ['weight'] = 1000,
        ['type'] = 'weapon',
        ['ammotype'] = nil,
        ['image'] = 'weapon_colbaton.png',
        ['unique'] = true,
        ['useable'] = false,
        ['created'] = nil,
        ['description'] = 'A Pd Baton'
    },

    -- PISTOL ATTACHMENTS
    ['pistol_defaultclip']           = {
        ['name'] = 'pistol_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pistol Default Clip'
    },
    ['pistol_extendedclip']          = {
        ['name'] = 'pistol_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pistol Extended Clip'
    },
    ['pistol_flashlight']            = {
        ['name'] = 'pistol_flashlight',
        ['label'] = 'Pistol Flashlight',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_flashlight.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pistol Flashlight Attachment'
    },
    ['pistol_suppressor']            = {
        ['name'] = 'pistol_suppressor',
        ['label'] = 'Pistol Suppressor',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pistol Suppressor Attachment'
    },
    ['pistol_luxuryfinish']          = {
        ['name'] = 'pistol_luxuryfinish',
        ['label'] = 'Pistol Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pistol Luxury Finish'
    },
    ['combatpistol_defaultclip']     = {
        ['name'] = 'combatpistol_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat Pistol Default Clip'
    },
    ['combatpistol_extendedclip']    = {
        ['name'] = 'combatpistol_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat Pistol Extended Clip'
    },
    ['combatpistol_luxuryfinish']    = {
        ['name'] = 'combatpistol_luxuryfinish',
        ['label'] = 'Pistol Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat Pistol Luxury Finish'
    },
    ['appistol_defaultclip']         = {
        ['name'] = 'appistol_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'APPistol Default Clip'
    },
    ['appistol_extendedclip']        = {
        ['name'] = 'appistol_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'APPistol Extended Clip'
    },
    ['appistol_luxuryfinish']        = {
        ['name'] = 'appistol_luxuryfinish',
        ['label'] = 'Pistol Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'APPistol Luxury Finish'
    },
    ['pistol50_defaultclip']         = {
        ['name'] = 'pistol50_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '.50 Pistol Default Clip'
    },
    ['pistol50_extendedclip']        = {
        ['name'] = 'pistol50_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '.50 Pistol Extended Clip'
    },
    ['pistol50_luxuryfinish']        = {
        ['name'] = 'pistol50_luxuryfinish',
        ['label'] = 'Pistol Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '.50 Pistol Luxury Finish'
    },
    ['revolver_defaultclip']         = {
        ['name'] = 'revolver_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Revovler Default Clip'
    },
    ['revolver_vipvariant']          = {
        ['name'] = 'revolver_vipvariant',
        ['label'] = 'Pistol Variant',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Revovler Variant'
    },
    ['revolver_bodyguardvariant']    = {
        ['name'] = 'revolver_bodyguardvariant',
        ['label'] = 'Pistol Variant',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Revovler Variant'
    },
    ['snspistol_defaultclip']        = {
        ['name'] = 'snspistol_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SNS Pistol Default Clip'
    },
    ['snspistol_extendedclip']       = {
        ['name'] = 'snspistol_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SNS Pistol Extended Clip'
    },
    ['snspistol_grip']               = {
        ['name'] = 'snspistol_grip',
        ['label'] = 'Pistol Grip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SNS Pistol Grip Attachment'
    },
    ['heavypistol_defaultclip']      = {
        ['name'] = 'heavypistol_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Pistol Default Clip'
    },
    ['heavypistol_extendedclip']     = {
        ['name'] = 'heavypistol_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Pistol Extended Clip'
    },
    ['heavypistol_grip']             = {
        ['name'] = 'heavypistol_grip',
        ['label'] = 'Pistol Grip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Pistol Grip Attachment'
    },
    ['vintagepistol_defaultclip']    = {
        ['name'] = 'vintagepistol_defaultclip',
        ['label'] = 'Pistol Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Vintage Pistol Default Clip'
    },
    ['vintagepistol_extendedclip']   = {
        ['name'] = 'vintagepistol_extendedclip',
        ['label'] = 'Pistol EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Vintage Pistol Default Clip'
    },

    -- SMG ATTACHMENTS
    ['microsmg_defaultclip']         = {
        ['name'] = 'microsmg_defaultclip',
        ['label'] = 'SMG Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Micro SMG Default Clip'
    },
    ['microsmg_extendedclip']        = {
        ['name'] = 'microsmg_extendedclip',
        ['label'] = 'SMG EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Micro SMG Extended Clip'
    },
    ['microsmg_scope']               = {
        ['name'] = 'microsmg_scope',
        ['label'] = 'SMG Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Micro SMG Scope Attachment'
    },
    ['microsmg_luxuryfinish']        = {
        ['name'] = 'microsmg_luxuryfinish',
        ['label'] = 'SMG Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Micro SMG Luxury Finish'
    },
    ['smg_defaultclip']              = {
        ['name'] = 'smg_defaultclip',
        ['label'] = 'SMG Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SMG Default Clip'
    },
    ['smg_extendedclip']             = {
        ['name'] = 'smg_extendedclip',
        ['label'] = 'SMG EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SMG Extended Clip'
    },
    ['smg_suppressor']               = {
        ['name'] = 'smg_suppressor',
        ['label'] = 'SMG Suppressor',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SMG Suppressor'
    },
    ['smg_drum']                     = {
        ['name'] = 'smg_drum',
        ['label'] = 'SMG Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SMG Drum'
    },
    ['smg_scope']                    = {
        ['name'] = 'smg_scope',
        ['label'] = 'SMG Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SMG Scope Attachment'
    },
    ['smg_luxuryfinish']             = {
        ['name'] = 'smg_luxuryfinish',
        ['label'] = 'SMG Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'SMG Luxury Finish'
    },
    ['assaultsmg_defaultclip']       = {
        ['name'] = 'assaultsmg_defaultclip',
        ['label'] = 'SMG Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault SMG Default Clip'
    },
    ['assaultsmg_extendedclip']      = {
        ['name'] = 'assaultsmg_extendedclip',
        ['label'] = 'SMG EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault SMG Extended Clip'
    },
    ['assaultsmg_luxuryfinish']      = {
        ['name'] = 'assaultsmg_luxuryfinish',
        ['label'] = 'SMG Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault SMG Luxury Finish'
    },
    ['minismg_defaultclip']          = {
        ['name'] = 'minismg_defaultclip',
        ['label'] = 'SMG Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Mini SMG Default Clip'
    },
    ['minismg_extendedclip']         = {
        ['name'] = 'minismg_extendedclip',
        ['label'] = 'SMG EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Mini SMG Extended Clip'
    },
    ['machinepistol_defaultclip']    = {
        ['name'] = 'machinepistol_defaultclip',
        ['label'] = 'SMG Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Machine Pistol Default Clip'
    },
    ['machinepistol_extendedclip']   = {
        ['name'] = 'machinepistol_extendedclip',
        ['label'] = 'SMG EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Machine Pistol Extended Clip'
    },
    ['machinepistol_drum']           = {
        ['name'] = 'machinepistol_drum',
        ['label'] = 'SMG Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Machine Pistol Drum'
    },
    ['combatpdw_defaultclip']        = {
        ['name'] = 'combatpdw_defaultclip',
        ['label'] = 'SMG Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat PDW Default Clip'
    },
    ['combatpdw_extendedclip']       = {
        ['name'] = 'combatpdw_extendedclip',
        ['label'] = 'SMG EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat PDW Extended Clip'
    },
    ['combatpdw_drum']               = {
        ['name'] = 'combatpdw_drum',
        ['label'] = 'SMG Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat PDW Drum'
    },
    ['combatpdw_grip']               = {
        ['name'] = 'combatpdw_grip',
        ['label'] = 'SMG Grip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat PDW Grip Attachment'
    },
    ['combatpdw_scope']              = {
        ['name'] = 'combatpdw_scope',
        ['label'] = 'SMG Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Combat PDW Scope Attachment'
    },

    -- SHOTGUN ATTACHMENTS
    ['shotgun_suppressor']           = {
        ['name'] = 'shotgun_suppressor',
        ['label'] = 'Shotgun Suppressor',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Shotgun Suppressor Attachment'
    },
    ['pumpshotgun_luxuryfinish']     = {
        ['name'] = 'pumpshotgun_luxuryfinish',
        ['label'] = 'Shotgun Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pump Shotgun Luxury Finish'
    },
    ['sawnoffshotgun_luxuryfinish']  = {
        ['name'] = 'sawnoffshotgun_luxuryfinish',
        ['label'] = 'Shotgun Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sawn Off Shotgun Luxury Finish'
    },
    ['assaultshotgun_defaultclip']   = {
        ['name'] = 'assaultshotgun_defaultclip',
        ['label'] = 'Shotgun Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault Shotgun Default Clip'
    },
    ['assaultshotgun_extendedclip']  = {
        ['name'] = 'assaultshotgun_extendedclip',
        ['label'] = 'Shotgun EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault Shotgun Extended Clip'
    },
    ['heavyshotgun_defaultclip']     = {
        ['name'] = 'heavyshotgun_defaultclip',
        ['label'] = 'Shotgun Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Shotgun Default Clip'
    },
    ['heavyshotgun_extendedclip']    = {
        ['name'] = 'heavyshotgun_extendedclip',
        ['label'] = 'Shotgun EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Shotgun Extended Clip'
    },
    ['heavyshotgun_drum']            = {
        ['name'] = 'heavyshotgun_drum',
        ['label'] = 'Shotgun Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Shotgun Drum'
    },

    -- RIFLE ATTACHMENTS
    ['assaultrifle_defaultclip']     = {
        ['name'] = 'assaultrifle_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault Rifle Default Clip'
    },
    ['assaultrifle_extendedclip']    = {
        ['name'] = 'assaultrifle_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault Rifle Extended Clip'
    },
    ['assaultrifle_drum']            = {
        ['name'] = 'assaultrifle_drum',
        ['label'] = 'Rifle Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault Rifle Drum'
    },
    ['rifle_flashlight']             = {
        ['name'] = 'rifle_flashlight',
        ['label'] = 'Rifle Flashlight',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_flashlight.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Rifle Flashlight Attachment'
    },
    ['rifle_grip']                   = {
        ['name'] = 'rifle_grip',
        ['label'] = 'Rifle Grip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Rifle Grip Attachment'
    },
    ['rifle_suppressor']             = {
        ['name'] = 'rifle_suppressor',
        ['label'] = 'Rifle Suppressor',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Rifle Suppressor Attachment'
    },
    ['assaultrifle_luxuryfinish']    = {
        ['name'] = 'assaultrifle_luxuryfinish',
        ['label'] = 'Rifle Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Assault Rifle Luxury Finish'
    },
    ['carbinerifle_defaultclip']     = {
        ['name'] = 'carbinerifle_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Carbine Rifle Default Clip'
    },
    ['carbinerifle_extendedclip']    = {
        ['name'] = 'carbinerifle_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Carbine Rifle Extended Clip'
    },
    ['carbinerifle_drum']            = {
        ['name'] = 'carbinerifle_drum',
        ['label'] = 'Rifle Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Carbine Rifle Drum'
    },
    ['carbinerifle_scope']           = {
        ['name'] = 'carbinerifle_scope',
        ['label'] = 'Rifle Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Carbine Rifle Scope'
    },
    ['carbinerifle_luxuryfinish']    = {
        ['name'] = 'carbinerifle_luxuryfinish',
        ['label'] = 'Rifle Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Carbine Rifle Luxury Finish'
    },
    ['advancedrifle_defaultclip']    = {
        ['name'] = 'advancedrifle_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Advanced Rifle Default Clip'
    },
    ['advancedrifle_extendedclip']   = {
        ['name'] = 'advancedrifle_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Advanced Rifle Extended Clip'
    },
    ['advancedrifle_luxuryfinish']   = {
        ['name'] = 'advancedrifle_luxuryfinish',
        ['label'] = 'Rifle Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Advanced Rifle Luxury Finish'
    },
    ['specialcarbine_defaultclip']   = {
        ['name'] = 'specialcarbine_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Special Carbine Default Clip'
    },
    ['specialcarbine_extendedclip']  = {
        ['name'] = 'specialcarbine_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Special Carbine Extended Clip'
    },
    ['specialcarbine_drum']          = {
        ['name'] = 'specialcarbine_drum',
        ['label'] = 'Rifle Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Special Carbine Drum'
    },
    ['specialcarbine_luxuryfinish']  = {
        ['name'] = 'specialcarbine_luxuryfinish',
        ['label'] = 'Rifle Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Special Carbine Luxury Finish'
    },
    ['bullpuprifle_defaultclip']     = {
        ['name'] = 'bullpuprifle_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Bullpup Rifle Default Clip'
    },
    ['bullpuprifle_extendedclip']    = {
        ['name'] = 'bullpuprifle_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Bullpup Rifle Extended Clip'
    },
    ['bullpuprifle_luxuryfinish']    = {
        ['name'] = 'bullpuprifle_luxuryfinish',
        ['label'] = 'Rifle Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Bullpup Rifle Luxury Finish'
    },
    ['compactrifle_defaultclip']     = {
        ['name'] = 'compactrifle_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Compact Rifle Default Clip'
    },
    ['compactrifle_extendedclip']    = {
        ['name'] = 'compactrifle_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Compact Rifle Extended Clip'
    },
    ['compactrifle_drum']            = {
        ['name'] = 'compactrifle_drum',
        ['label'] = 'Rifle Drum',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_drummag.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Compact Rifle Drum'
    },
    ['gusenberg_defaultclip']        = {
        ['name'] = 'gusenberg_defaultclip',
        ['label'] = 'Rifle Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Gusenberg Default Clip'
    },
    ['gusenberg_extendedclip']       = {
        ['name'] = 'gusenberg_extendedclip',
        ['label'] = 'Rifle EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Gusenberg Extended Clip'
    },

    -- SNIPER ATTACHMENTS
    ['sniperrifle_defaultclip']      = {
        ['name'] = 'sniperrifle_defaultclip',
        ['label'] = 'Sniper Suppressor',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sniper Rifle Default Clip'
    },
    ['sniper_scope']                 = {
        ['name'] = 'sniper_scope',
        ['label'] = 'Sniper Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sniper Rifle Scope Attachment'
    },
    ['snipermax_scope']              = {
        ['name'] = 'snipermax_scope',
        ['label'] = 'Sniper Max Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sniper Rifle Max Scope Attachment'
    },
    ['sniper_grip']                  = {
        ['name'] = 'sniper_grip',
        ['label'] = 'Sniper Grip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sniper Rifle Grip Attachment'
    },
    ['heavysniper_defaultclip']      = {
        ['name'] = 'heavysniper_defaultclip',
        ['label'] = 'Sniper Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy Sniper Default Clip'
    },
    ['marksmanrifle_defaultclip']    = {
        ['name'] = 'marksmanrifle_defaultclip',
        ['label'] = 'Sniper Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Marksman Rifle Default Clip'
    },
    ['marksmanrifle_extendedclip']   = {
        ['name'] = 'marksmanrifle_extendedclip',
        ['label'] = 'Sniper EXT Clip',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_extendedclip.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Marksman Rifle Extended Clip'
    },
    ['marksmanrifle_scope']          = {
        ['name'] = 'marksmanrifle_scope',
        ['label'] = 'Sniper Scope',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'smg_scope.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Marksman Rifle Scope Attachment'
    },
    ['marksmanrifle_luxuryfinish']   = {
        ['name'] = 'marksmanrifle_luxuryfinish',
        ['label'] = 'Sniper Finish',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pistol_suppressor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Marksman Rifle Luxury Finish'
    },

    -- Weapon Tints
    ['black_weapontint']             = {
        ['name'] = 'black_weapontint',
        ['label'] = 'Default Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_black.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Default/Black Weapon Tint'
    },
    ['green_weapontint']             = {
        ['name'] = 'green_weapontint',
        ['label'] = 'Green Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_green.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Green Weapon Tint'
    },
    ['gold_weapontint']              = {
        ['name'] = 'gold_weapontint',
        ['label'] = 'Gold Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_gold.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Gold Weapon Tint'
    },
    ['pink_weapontint']              = {
        ['name'] = 'pink_weapontint',
        ['label'] = 'Pink Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_pink.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pink Weapon Tint'
    },
    ['army_weapontint']              = {
        ['name'] = 'army_weapontint',
        ['label'] = 'Army Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_army.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Army Weapon Tint'
    },
    ['lspd_weapontint']              = {
        ['name'] = 'lspd_weapontint',
        ['label'] = 'LSPD Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_lspd.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'LSPD Weapon Tint'
    },
    ['orange_weapontint']            = {
        ['name'] = 'orange_weapontint',
        ['label'] = 'Orange Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_orange.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Orange Weapon Tint'
    },
    ['plat_weapontint']              = {
        ['name'] = 'plat_weapontint',
        ['label'] = 'Platinum Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weapontint_plat.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Platinum Weapon Tint'
    },
    ['url_weapontint']               = {
        ['name'] = 'url_weapontint',
        ['label'] = 'Custom Tint',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'url_weapontint.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Weapon tint url custom'
    },

    -- Ammo
    ['pistol_ammo']                  = {
        ['name'] = 'pistol_ammo',
        ['label'] = 'Pistol ammo',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'pistol_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for Pistols'
    },
    ['rifle_ammo']                   = {
        ['name'] = 'rifle_ammo',
        ['label'] = 'Rifle ammo',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for Rifles'
    },
    ['smg_ammo']                     = {
        ['name'] = 'smg_ammo',
        ['label'] = 'SMG ammo',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'smg_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for Sub Machine Guns'
    },
    ['shotgun_ammo']                 = {
        ['name'] = 'shotgun_ammo',
        ['label'] = 'Shotgun ammo',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'shotgun_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for Shotguns'
    },
    ['mg_ammo']                      = {
        ['name'] = 'mg_ammo',
        ['label'] = 'MG ammo',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'mg_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for Machine Guns'
    },
    ['sniper_ammo']                  = {
        ['name'] = 'sniper_ammo',
        ['label'] = 'Sniper ammo',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'rifle_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for Sniper Rifles'
    },
    ['emp_ammo']                     = {
        ['name'] = 'emp_ammo',
        ['label'] = 'EMP Ammo',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'emp_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for EMP Launcher'
    },
    ['rpg_ammo']                     = {
        ['name'] = 'rpg_ammo',
        ['label'] = 'RPG Ammo',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'emp_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for EMP Launcher'
    },
    ['grenadelauncher_ammo']         = {
        ['name'] = 'grenadelauncher_ammo',
        ['label'] = 'Grenade Ammo',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'emp_ammo.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Ammo for EMP Launcher'
    },

    -- Card
    ['id_card']                      = {
        ['name'] = 'id_card',
        ['label'] = 'ID Card',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'id_card.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A card containing all your information to identify yourself'
    },
    ['driver_license']               = {
        ['name'] = 'driver_license',
        ['label'] = 'Drivers License',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'driver_license.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Permit to show you can drive a vehicle'
    },
    ['lawyerpass']                   = {
        ['name'] = 'lawyerpass',
        ['label'] = 'Lawyer Pass',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'lawyerpass.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Pass exclusive to lawyers to show they can represent a suspect'
    },
    ['weaponlicense']                = {
        ['name'] = 'weaponlicense',
        ['label'] = 'Weapon License',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weapon_license.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Weapon License'
    },
    ['visa']                         = {
        ['name'] = 'visa',
        ['label'] = 'Visa Card',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'visacard.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Visa can be used via ATM'
    },
    ['mastercard']                   = {
        ['name'] = 'mastercard',
        ['label'] = 'Master Card',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'mastercard.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'MasterCard can be used via ATM'
    },
    ['security_card_01']             = {
        ['name'] = 'security_card_01',
        ['label'] = 'Security Card A',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'security_card_01.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A security card... I wonder what it goes to'
    },
    ['security_card_02']             = {
        ['name'] = 'security_card_02',
        ['label'] = 'Security Card B',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'security_card_02.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A security card... I wonder what it goes to'
    },

    -- Eat
    ['tosti']                        = {
        ['name'] = 'tosti',
        ['label'] = 'Grilled Cheese Sandwich',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'tosti.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Nice to eat',
        ['created'] = nil,
        ['decay'] = 0.01,
        ['delete'] = false,
        ['client'] = {
            status = {
                hunger = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp'
            },
            prop = {
                model = 'prop_cs_burger_01',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['twerks_candy']                 = {
        ['name'] = 'twerks_candy',
        ['label'] = 'Twerks',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'twerks_candy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Some delicious candy :O',
        ['created'] = nil,
        ['decay'] = 0.03,
        ['delete'] = false,
        ['client'] = {
            status = {
                hunger = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp'
            },
            prop = {
                model = 'ng_proc_candy01a',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['snikkel_candy']                = {
        ['name'] = 'snikkel_candy',
        ['label'] = 'Snikkel',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'snikkel_candy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Some delicious candy :O',
        ['created'] = nil,
        ['decay'] = 0.03,
        ['delete'] = false,
        ['client'] = {
            status = {
                hunger = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp'
            },
            prop = {
                model = 'prop_candy_pqs',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['sandwich']                     = {
        ['name'] = 'sandwich',
        ['label'] = 'Sandwich',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'sandwich.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Nice bread for your stomach',
        ['created'] = nil,
        ['decay'] = 0.01,
        ['delete'] = false,
        ['client'] = {
            status = {
                hunger = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp'
            },
            prop = {
                model = 'prop_sandwich_01',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },

    -- Drink
    ['water_bottle']                 = {
        ['name'] = 'water_bottle',
        ['label'] = 'Bottle of Water',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'water_bottle.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'For all the thirsty out there',
        ['created'] = nil,
        ['decay'] = 0.03,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'prop_ld_flow_bottle',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['coffee']                       = {
        ['name'] = 'coffee',
        ['label'] = 'Coffee',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'coffee.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pump 4 Caffeine',
        ['created'] = nil,
        ['decay'] = 0.01,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'ng_proc_coffee_01a',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['kurkakola']                    = {
        ['name'] = 'kurkakola',
        ['label'] = 'Cola',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'cola.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'For all the thirsty out there',
        ['created'] = nil,
        ['decay'] = 0.03,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'prop_ecola_can',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },

    -- Alcohol
    ['beer']                         = {
        ['name'] = 'beer',
        ['label'] = 'Beer',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'beer.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Nothing like a good cold beer!',
        ['created'] = nil,
        ['decay'] = 0.02,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'prop_amb_beer_bottle',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['whiskey']                      = {
        ['name'] = 'whiskey',
        ['label'] = 'Whiskey',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'whiskey.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'For all the thirsty out there',
        ['created'] = nil,
        ['decay'] = 0.05,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'p_whiskey_bottle_s',
                coords = vec3(0.02, 0.02, -0.02),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['vodka']                        = {
        ['name'] = 'vodka',
        ['label'] = 'Vodka',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'vodka.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'For all the thirsty out there',
        ['created'] = nil,
        ['decay'] = 0.04,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'prop_vodka_bottle',
                coords = vec3(0.02, 0.02, -0.25),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },
    ['wine']                         = {
        ['name'] = 'wine',
        ['label'] = 'Wine',
        ['weight'] = 300,
        ['type'] = 'item',
        ['image'] = 'wine.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Some good wine to drink on a fine evening',
        ['created'] = nil,
        ['decay'] = 0.05,
        ['delete'] = false,
        ['client'] = {
            status = {
                thirst = 200000,
            },
            usetime = 2500,
            anim = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle'
            },
            prop = {
                model = 'p_wine_glass_s',
                coords = vec3(0.02, 0.02, -0.08),
                rotation = vec3(0.0, 0.0, 0.0)
            },
            disable = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            removeAfterUse = true
        }
    },

    -- Drugs
    ['joint']                        = {
        ['name'] = 'joint',
        ['label'] = 'Joint',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'joint.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sidney would be very proud at you'
    },
    ['cokebaggy']                    = {
        ['name'] = 'cokebaggy',
        ['label'] = 'Bag of Coke',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'cocaine_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'To get happy real quick'
    },
    ['crack_baggy']                  = {
        ['name'] = 'crack_baggy',
        ['label'] = 'Bag of Crack',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'crack_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'To get happy faster'
    },
    ['xtcbaggy']                     = {
        ['name'] = 'xtcbaggy',
        ['label'] = 'Bag of XTC',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'xtc_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pop those pills baby'
    },
    ['weed_brick']                   = {
        ['name'] = 'weed_brick',
        ['label'] = 'Weed Brick',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'weed_brick.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '1KG Weed Brick to sell to large customers.'
    },
    ['coke_brick']                   = {
        ['name'] = 'coke_brick',
        ['label'] = 'Coke Brick',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'coke_brick.png',
        ['unique'] = true,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Heavy package of cocaine, mostly used for deals and takes a lot of space'
    },
    ['coke_small_brick']             = {
        ['name'] = 'coke_small_brick',
        ['label'] = 'Coke Package',
        ['weight'] = 350,
        ['type'] = 'item',
        ['image'] = 'coke_small_brick.png',
        ['unique'] = true,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'
    },
    ['oxy']                          = {
        ['name'] = 'oxy',
        ['label'] = 'Prescription Oxy',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'oxy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'The Label Has Been Ripped Off'
    },
    ['cannabis']                     = {
        ['name'] = 'cannabis',
        ['label'] = 'Cannabis',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'weed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A baggie of cannabis'
    },
    ['marijuana']                    = {
        ['name'] = 'marijuana',
        ['label'] = 'Marijuana',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'weed_packaged.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A baggie of cannabis'
    },
    ['rolling_paper']                = {
        ['name'] = 'rolling_paper',
        ['label'] = 'Rolling Paper',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'rolling_paper.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = {
            accept = {
                'weed_white-widow',
                'weed_skunk',
                'weed_purple-haze',
                'weed_og-kush',
                'weed_amnesia',
                'weed_ak47'
            },
            reward = 'joint',
            anim = {
                ['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@',
                ['lib'] = 'weed_inspecting_high_base_inspector',
                ['text'] = 'Rolling joint',
                ['timeOut'] = 5000,

            }
        },
        ['description'] = 'Paper made specifically for encasing and smoking tobacco or cannabis.'
    },

    -- Seed And Weed
    ['weed_white-widow']             = {
        ['name'] = 'weed_white-widow',
        ['label'] = 'White Widow 2g',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'weed_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed bag with 2g White Widow'
    },
    ['weed_skunk']                   = {
        ['name'] = 'weed_skunk',
        ['label'] = 'Skunk 2g',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'weed_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed bag with 2g Skunk'
    },
    ['weed_purple-haze']             = {
        ['name'] = 'weed_purple-haze',
        ['label'] = 'Purple Haze 2g',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'weed_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed bag with 2g Purple Haze'
    },
    ['weed_og-kush']                 = {
        ['name'] = 'weed_og-kush',
        ['label'] = 'OGKush 2g',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'weed_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed bag with 2g OG Kush'
    },
    ['weed_amnesia']                 = {
        ['name'] = 'weed_amnesia',
        ['label'] = 'Amnesia 2g',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'weed_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed bag with 2g Amnesia'
    },
    ['weed_ak47']                    = {
        ['name'] = 'weed_ak47',
        ['label'] = 'AK47 2g',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'weed_baggy.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed bag with 2g AK47'
    },
    ['weed_white-widow_seed']        = {
        ['name'] = 'weed_white-widow_seed',
        ['label'] = 'White Widow Seed',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_seed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A weed seed of White Widow'
    },
    ['weed_skunk_seed']              = {
        ['name'] = 'weed_skunk_seed',
        ['label'] = 'Skunk Seed',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_seed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A weed seed of Skunk'
    },
    ['weed_purple-haze_seed']        = {
        ['name'] = 'weed_purple-haze_seed',
        ['label'] = 'Purple Haze Seed',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_seed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A weed seed of Purple Haze'
    },
    ['weed_og-kush_seed']            = {
        ['name'] = 'weed_og-kush_seed',
        ['label'] = 'OGKush Seed',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_seed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A weed seed of OG Kush'
    },
    ['weed_amnesia_seed']            = {
        ['name'] = 'weed_amnesia_seed',
        ['label'] = 'Amnesia Seed',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_seed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A weed seed of Amnesia'
    },
    ['weed_ak47_seed']               = {
        ['name'] = 'weed_ak47_seed',
        ['label'] = 'AK47 Seed',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_seed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A weed seed of AK47'
    },
    ['empty_weed_bag']               = {
        ['name'] = 'empty_weed_bag',
        ['label'] = 'Empty Weed Bag',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'weed_baggy_empty.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A small empty bag'
    },
    ['weed_nutrition']               = {
        ['name'] = 'weed_nutrition',
        ['label'] = 'Plant Fertilizer',
        ['weight'] = 2000,
        ['type'] = 'item',
        ['image'] = 'weed_nutrition.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Plant nutrition'
    },

    -- Material
    ['plastic']                      = {
        ['name'] = 'plastic',
        ['label'] = 'Plastic',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'plastic.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'RECYCLE! - Greta Thunberg 2019'
    },
    ['metalscrap']                   = {
        ['name'] = 'metalscrap',
        ['label'] = 'Metal Scrap',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'metalscrap.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'You can probably make something nice out of this'
    },
    ['copper']                       = {
        ['name'] = 'copper',
        ['label'] = 'Copper',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'copper.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Nice piece of metal that you can probably use for something'
    },
    ['aluminum']                     = {
        ['name'] = 'aluminum',
        ['label'] = 'Aluminium',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'aluminum.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Nice piece of metal that you can probably use for something'
    },
    ['aluminumoxide']                = {
        ['name'] = 'aluminumoxide',
        ['label'] = 'Aluminium Powder',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'aluminumoxide.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Some powder to mix with'
    },
    ['iron']                         = {
        ['name'] = 'iron',
        ['label'] = 'Iron',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'iron.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Handy piece of metal that you can probably use for something'
    },
    ['ironoxide']                    = {
        ['name'] = 'ironoxide',
        ['label'] = 'Iron Powder',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'ironoxide.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = {
            accept = {
                'aluminumoxide'
            },
            reward = 'thermite',
            anim = {
                ['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@',
                ['lib'] = 'weed_inspecting_high_base_inspector',
                ['text'] = 'Mixing powder..',
                ['timeOut'] = 10000
            }
        },
        ['description'] = 'Some powder to mix with.'
    },
    ['steel']                        = {
        ['name'] = 'steel',
        ['label'] = 'Steel',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'steel.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Nice piece of metal that you can probably use for something'
    },
    ['rubber']                       = {
        ['name'] = 'rubber',
        ['label'] = 'Rubber',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'rubber.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Rubber, I believe you can make your own rubber ducky with it :D'
    },
    ['glass']                        = {
        ['name'] = 'glass',
        ['label'] = 'Glass',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'glass.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'It is very fragile, watch out'
    },

    -- Tools
    ['lockpick']                     = {
        ['name'] = 'lockpick',
        ['label'] = 'Lockpick',
        ['weight'] = 300,
        ['type'] = 'item',
        ['image'] = 'lockpick.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = {
            accept = {
                'screwdriverset'
            },
            reward = 'advancedlockpick',
            anim = {
                ['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@',
                ['lib'] = 'weed_inspecting_high_base_inspector',
                ['text'] = 'Crafting lockpick',
                ['timeOut'] = 7500,

            }
        },
        ['description'] = 'Very useful if you lose your keys a lot.. or if you want to use it for something else...'
    },
    ['advancedlockpick']             = {
        ['name'] = 'advancedlockpick',
        ['label'] = 'Advanced Lockpick',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'advancedlockpick.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'If you lose your keys a lot this is very useful... Also useful to open your beers'
    },
    ['electronickit']                = {
        ['name'] = 'electronickit',
        ['label'] = 'Electronic Kit',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'electronickit.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = {
            accept = {
                'gatecrack'
            },
            reward = 'trojan_usb',
            anim = nil
        },
        ['description'] = 'If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?'
    },
    ['gatecrack']                    = {
        ['name'] = 'gatecrack',
        ['label'] = 'Gatecrack',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'usb_device.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Handy software to tear down some fences'
    },
    ['thermite']                     = {
        ['name'] = 'thermite',
        ['label'] = 'Thermite',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'thermite.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sometimes you\'d wish for everything to burn'
    },
    ['trojan_usb']                   = {
        ['name'] = 'trojan_usb',
        ['label'] = 'Trojan USB',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'usb_device.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Handy software to shut down some systems'
    },
    ['screwdriverset']               = {
        ['name'] = 'screwdriverset',
        ['label'] = 'Toolkit',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'screwdriverset.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Very useful to screw... screws...'
    },
    ['drill']                        = {
        ['name'] = 'drill',
        ['label'] = 'Drill',
        ['weight'] = 20000,
        ['type'] = 'item',
        ['image'] = 'drill.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'The real deal...'
    },

    -- Vehicle Tools
    ['nitrous']                      = {
        ['name'] = 'nitrous',
        ['label'] = 'Nitrous',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'nitrous.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Speed up, gas pedal! :D'
    },
    ['repairkit']                    = {
        ['name'] = 'repairkit',
        ['label'] = 'Repairkit',
        ['weight'] = 2500,
        ['type'] = 'item',
        ['image'] = 'repairkit.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice toolbox with stuff to repair your vehicle'
    },
    ['advancedrepairkit']            = {
        ['name'] = 'advancedrepairkit',
        ['label'] = 'Advanced Repairkit',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'advancedkit.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice toolbox with stuff to repair your vehicle'
    },
    ['cleaningkit']                  = {
        ['name'] = 'cleaningkit',
        ['label'] = 'Cleaning Kit',
        ['weight'] = 250,
        ['type'] = 'item',
        ['image'] = 'cleaningkit.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A microfiber cloth with some soap will let your car sparkle again!'
    },
    ['tunerlaptop']                  = {
        ['name'] = 'tunerlaptop',
        ['label'] = 'Tunerchip',
        ['weight'] = 2000,
        ['type'] = 'item',
        ['image'] = 'tunerchip.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'With this tunerchip you can get your car on steroids... If you know what you\'re doing'
    },
    ['harness']                      = {
        ['name'] = 'harness',
        ['label'] = 'Race Harness',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'harness.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Racing Harness so no matter what you stay in the car'
    },
    ['jerry_can']                    = {
        ['name'] = 'jerry_can',
        ['label'] = 'Jerrycan 20L',
        ['weight'] = 20000,
        ['type'] = 'item',
        ['image'] = 'jerry_can.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A can full of Fuel'
    },

    -- Medication
    ['firstaid']                     = {
        ['name'] = 'firstaid',
        ['label'] = 'First Aid',
        ['weight'] = 2500,
        ['type'] = 'item',
        ['image'] = 'firstaid.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'You can use this First Aid kit to get people back on their feet'
    },
    ['bandage']                      = {
        ['name'] = 'bandage',
        ['label'] = 'Bandage',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'bandage.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A bandage works every time'
    },
    ['ifaks']                        = {
        ['name'] = 'ifaks',
        ['label'] = 'ifaks',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'ifaks.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'ifaks for healing and a complete stress remover.'
    },
    ['painkillers']                  = {
        ['name'] = 'painkillers',
        ['label'] = 'Painkillers',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'painkillers.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'For pain you can\'t stand anymore, take this pill that\'d make you feel great again'
    },
    ['walkstick']                    = {
        ['name'] = 'walkstick',
        ['label'] = 'Walking Stick',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'walkstick.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Walking stick for ya\'ll grannies out there.. HAHA'
    },

    -- Communication
    ['radio']                        = {
        ['name'] = 'radio',
        ['label'] = 'Radio',
        ['weight'] = 2000,
        ['type'] = 'item',
        ['image'] = 'radio.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'You can communicate with this through a signal'
    },
    ['iphone']                       = {
        ['name'] = 'iphone',
        ['label'] = 'iPhone',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'iphone.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Very expensive phone'
    },
    ['samsungphone']                 = {
        ['name'] = 'samsungphone',
        ['label'] = 'Samsung S10',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'samsungphone.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Very expensive phone'
    },
    ['laptop']                       = {
        ['name'] = 'laptop',
        ['label'] = 'Laptop',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'laptop.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Expensive laptop'
    },
    ['tablet']                       = {
        ['name'] = 'tablet',
        ['label'] = 'Tablet',
        ['weight'] = 2000,
        ['type'] = 'item',
        ['image'] = 'tablet.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Expensive tablet'
    },
    ['fitbit']                       = {
        ['name'] = 'fitbit',
        ['label'] = 'Fitbit',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'fitbit.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'I like fitbit'
    },
    ['radioscanner']                 = {
        ['name'] = 'radioscanner',
        ['label'] = 'Radio Scanner',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'radioscanner.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'With this you can get some police alerts. Not 100% effective however'
    },
    ['pinger']                       = {
        ['name'] = 'pinger',
        ['label'] = 'Pinger',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'pinger.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'With a pinger and your phone you can send out your location'
    },

    -- Theft and Jewelry
    ['rolex']                        = {
        ['name'] = 'rolex',
        ['label'] = 'Golden Watch',
        ['weight'] = 1500,
        ['type'] = 'item',
        ['image'] = 'rolex.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A golden watch seems like the jackpot to me!'
    },
    ['diamond_ring']                 = {
        ['name'] = 'diamond_ring',
        ['label'] = 'Diamond Ring',
        ['weight'] = 1500,
        ['type'] = 'item',
        ['image'] = 'diamond_ring.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A diamond ring seems like the jackpot to me!'
    },
    ['diamond']                      = {
        ['name'] = 'diamond',
        ['label'] = 'Diamond',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'diamond.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A diamond seems like the jackpot to me!'
    },
    ['goldchain']                    = {
        ['name'] = 'goldchain',
        ['label'] = 'Golden Chain',
        ['weight'] = 1500,
        ['type'] = 'item',
        ['image'] = 'goldchain.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A golden chain seems like the jackpot to me!'
    },
    ['10kgoldchain']                 = {
        ['name'] = '10kgoldchain',
        ['label'] = '10k Gold Chain',
        ['weight'] = 2000,
        ['type'] = 'item',
        ['image'] = '10kgoldchain.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '10 carat golden chain'
    },
    ['goldbar']                      = {
        ['name'] = 'goldbar',
        ['label'] = 'Gold Bar',
        ['weight'] = 7000,
        ['type'] = 'item',
        ['image'] = 'goldbar.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Looks pretty expensive to me'
    },

    -- Cops Tools
    ['armor']                        = {
        ['name'] = 'armor',
        ['label'] = 'Armor',
        ['weight'] = 5000,
        ['type'] = 'item',
        ['image'] = 'armor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Some protection won\'t hurt... right?'
    },
    ['heavyarmor']                   = {
        ['name'] = 'heavyarmor',
        ['label'] = 'Heavy Armor',
        ['weight'] = 5000,
        ['type'] = 'item',
        ['image'] = 'armor.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Some protection won\'t hurt... right?'
    },
    ['handcuffs']                    = {
        ['name'] = 'handcuffs',
        ['label'] = 'Handcuffs',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'handcuffs.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'
    },
    ['police_stormram']              = {
        ['name'] = 'police_stormram',
        ['label'] = 'Stormram',
        ['weight'] = 18000,
        ['type'] = 'item',
        ['image'] = 'police_stormram.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice tool to break into doors'
    },
    ['empty_evidence_bag']           = {
        ['name'] = 'empty_evidence_bag',
        ['label'] = 'Empty Evidence Bag',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'evidence.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Used a lot to keep DNA from blood, bullet shells and more'
    },
    ['filled_evidence_bag']          = {
        ['name'] = 'filled_evidence_bag',
        ['label'] = 'Evidence Bag',
        ['weight'] = 200,
        ['type'] = 'item',
        ['image'] = 'evidence.png',
        ['unique'] = true,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A filled evidence bag to see who committed the crime >:('
    },

    -- Firework Tools
    ['firework1']                    = {
        ['name'] = 'firework1',
        ['label'] = '2Brothers',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'firework1.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Fireworks'
    },
    ['firework2']                    = {
        ['name'] = 'firework2',
        ['label'] = 'Poppelers',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'firework2.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Fireworks'
    },
    ['firework3']                    = {
        ['name'] = 'firework3',
        ['label'] = 'WipeOut',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'firework3.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Fireworks'
    },
    ['firework4']                    = {
        ['name'] = 'firework4',
        ['label'] = 'Weeping Willow',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'firework4.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Fireworks'
    },

    -- Sea Tools
    ['dendrogyra_coral']             = {
        ['name'] = 'dendrogyra_coral',
        ['label'] = 'Dendrogyra',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'dendrogyra_coral.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Its also known as pillar coral'
    },
    ['antipatharia_coral']           = {
        ['name'] = 'antipatharia_coral',
        ['label'] = 'Antipatharia',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'antipatharia_coral.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Its also known as black corals or thorn corals'
    },
    ['diving_gear']                  = {
        ['name'] = 'diving_gear',
        ['label'] = 'Diving Gear',
        ['weight'] = 30000,
        ['type'] = 'item',
        ['image'] = 'diving_gear.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'An oxygen tank and a rebreather'
    },
    ['diving_fill']                  = {
        ['name'] = 'diving_fill',
        ['label'] = 'Diving Tube',
        ['weight'] = 3000,
        ['type'] = 'item',
        ['image'] = 'diving_tube.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['discription'] = 'An oxygen tube and a rebreather'
    },

    -- Other Tools
    ['money']                        = {
        ['name'] = 'money',
        ['label'] = 'Money',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'cash.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Cash'
    },
    ['black_money']                  = {
        ['name'] = 'black_money',
        ['label'] = 'Black Money',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'black_money.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Black Money'
    },
    ['casinochips']                  = {
        ['name'] = 'casinochips',
        ['label'] = 'Casino Chips',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'casinochips.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Chips For Casino Gambling'
    },
    ['stickynote']                   = {
        ['name'] = 'stickynote',
        ['label'] = 'Sticky note',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'stickynote.png',
        ['unique'] = true,
        ['useable'] = false,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Sometimes handy to remember something :)'
    },
    ['moneybag']                     = {
        ['name'] = 'moneybag',
        ['label'] = 'Money Bag',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'moneybag.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A bag with cash'
    },
    ['parachute']                    = {
        ['name'] = 'parachute',
        ['label'] = 'Parachute',
        ['weight'] = 30000,
        ['type'] = 'item',
        ['image'] = 'parachute.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'The sky is the limit! Woohoo!'
    },
    ['binoculars']                   = {
        ['name'] = 'binoculars',
        ['label'] = 'Binoculars',
        ['weight'] = 600,
        ['type'] = 'item',
        ['image'] = 'binoculars.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Sneaky Breaky...'
    },
    ['lighter']                      = {
        ['name'] = 'lighter',
        ['label'] = 'Lighter',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'lighter.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'On new years eve a nice fire to stand next to'
    },
    ['certificate']                  = {
        ['name'] = 'certificate',
        ['label'] = 'Certificate',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'certificate.png',
        ['unique'] = false,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Certificate that proves you own certain stuff'
    },
    ['markedbills']                  = {
        ['name'] = 'markedbills',
        ['label'] = 'Marked Money',
        ['weight'] = 1000,
        ['type'] = 'item',
        ['image'] = 'markedbills.png',
        ['unique'] = true,
        ['useable'] = false,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Money?'
    },
    ['labkey']                       = {
        ['name'] = 'labkey',
        ['label'] = 'Key',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'labkey.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Key for a lock...?'
    },
    ['printerdocument']              = {
        ['name'] = 'printerdocument',
        ['label'] = 'Document',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'printerdocument.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice document'
    },

    -- ESX Jobs
    ['alive_chicken']                = {
        ['name'] = 'alive_chicken',
        ['label'] = 'Alive Chicken',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'alive_chicken.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Alive Chicken, coco-coo!'
    },
    ['slaughtered_chicken']          = {
        ['name'] = 'slaughtered_chicken',
        ['label'] = 'Slaughtered Chicken',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'slaughtered_chicken.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Alive Chicken, coco-coo!'
    },
    ['packaged_chicken']             = {
        ['name'] = 'packaged_chicken',
        ['label'] = 'Packaged Chicken',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'packaged_chicken.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Alive Chicken, coco-coo!'
    },
    ['fish']                         = {
        ['name'] = 'fish',
        ['label'] = 'Fish',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'fish.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Im a fish yey'
    },
    ['stone']                        = {
        ['name'] = 'stone',
        ['label'] = 'Stone',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'stone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'What does one stone say to another? Nothing because they dont speak brou'
    },
    ['washed_stone']                 = {
        ['name'] = 'washed_stone',
        ['label'] = 'Washed Stone',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'washed_stone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'What does one stone say to another? Nothing because they dont speak brou'
    },
    ['gold']                         = {
        ['name'] = 'gold',
        ['label'] = 'Gold',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'iron.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'It shines brighter than your eyes, shame Im just an inventory hehe'
    },
    ['wood']                         = {
        ['name'] = 'wood',
        ['label'] = 'Wood',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'wood.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Harder than pinocchio nose'
    },
    ['cutted_wood']                  = {
        ['name'] = 'cutted_wood',
        ['label'] = 'Cutted Wood',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'wood.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Harder than pinocchio nose'
    },
    ['packaged_plank']               = {
        ['name'] = 'packaged_plank',
        ['label'] = 'Packaged Plank',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'wood.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Harder than pinocchio nose'
    },
    ['motelkey']                     = {
        ['name'] = 'motelkey',
        ['label'] = 'Motel Key',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'motelkey.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Key to your motel room'
    },
    ['petrol']                       = {
        ['name'] = 'petrol',
        ['label'] = 'Petrol',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'wood.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Blacker than night, like batman'
    },
    ['petrol_raffin']                = {
        ['name'] = 'petrol_raffin',
        ['label'] = 'Petrol Raffin',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'wood.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Blacker than night, like batman'
    },
    ['essence']                      = {
        ['name'] = 'essence',
        ['label'] = 'Essense',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'essence.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'I dont know what it is, but it sounds interesting'
    },
    ['wool']                         = {
        ['name'] = 'wool',
        ['label'] = 'Wool',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'wool.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'I dont know what it is, but it sounds interesting'
    },
    ['fabric']                       = {
        ['name'] = 'fabric',
        ['label'] = 'Fabric',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'fabric.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'I dont know what it is, but it sounds interesting'
    },
    ['clothe']                       = {
        ['name'] = 'clothe',
        ['label'] = 'Clothe',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'clothe.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice garment, it seems sewn by my grandmother'
    },

    -- Clothes Tools
    ['tshirt']                       = {
        ['name'] = 'tshirt',
        ['label'] = 'T-shirt',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'tshirt.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['torso']                        = {
        ['name'] = 'torso',
        ['label'] = 'Torso',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'torso.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['arms']                         = {
        ['name'] = 'arms',
        ['label'] = 'Arms',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'arms.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['jeans']                        = {
        ['name'] = 'jeans',
        ['label'] = 'Jeans',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'jeans.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['shoes']                        = {
        ['name'] = 'shoes',
        ['label'] = 'Shoes',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'shoes.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['mask']                         = {
        ['name'] = 'mask',
        ['label'] = 'Mask',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'mask.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['ears']                         = {
        ['name'] = 'ears',
        ['label'] = 'Ears',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'ears.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['glasses']                      = {
        ['name'] = 'glasses',
        ['label'] = 'Glasses',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'glasses.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['helmet']                       = {
        ['name'] = 'helmet',
        ['label'] = 'Helmet',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'helmet.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },
    ['bag']                          = {
        ['name'] = 'bag',
        ['label'] = 'Bag',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'bag.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A nice piece of clothing'
    },

    -- Camera
    ['camera']                       = {
        ['name'] = 'camera',
        ['label'] = 'Camera',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'camera.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A small and sweet casting.'
    },

    ['photo']                        = {
        ['name'] = 'photo',
        ['label'] = 'Photo',
        ['weight'] = 1,
        ['type'] = 'item',
        ['image'] = 'photo.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A small and sweet casting.'
    },

    ['camera_module']                = {
        ['name'] = 'camera_module',
        ['label'] = 'Camera module',
        ['weight'] = 20,
        ['type'] = 'item',
        ['image'] = 'camera_module.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A small and sweet casting.'
    },

    ['broken_camera']                = {
        ['name'] = 'broken_camera',
        ['label'] = 'Broken Camera',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'broken_camera.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A small and sweet casting.'
    },

    -- Vehiclekeys
    ['vehiclekeys']                  = {
        ['name'] = 'vehiclekeys',
        ['label'] = 'Vehicle Keys',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'vehiclekeys.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A small and sweet casting.'
    },
    ['plate']                        = {
        ['name'] = 'plate',
        ['label'] = 'Plate',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'plate.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A plate.'
    },
    ['carlockpick']                  = {
        ['name'] = 'carlockpick',
        ['label'] = 'Carlockpick',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'carlockpick.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A Lockpick.'
    },
    ['caradvancedlockpick']          = {
        ['name'] = 'caradvancedlockpick',
        ['label'] = 'Car Advanced Lockpick',
        ['weight'] = 500,
        ['type'] = 'item',
        ['image'] = 'advancedlockpick.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'If you lose your keys a lot this is very useful... Also useful to open your beers'
    },

    -- Drugs
    ['weed']                         = {
        ['name'] = 'weed',
        ['label'] = 'Weed',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'weed.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['weed_packaged']                = {
        ['name'] = 'weed_packaged',
        ['label'] = 'weed_packaged',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'weed_packaged.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['cocaine']                      = {
        ['name'] = 'cocaine',
        ['label'] = 'cocaine',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'cocaine.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['cocaine_cut']                  = {
        ['name'] = 'cocaine_cut',
        ['label'] = 'cocaine_cut',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'cocaine_cut.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['cocaine_packaged']             = {
        ['name'] = 'cocaine_packaged',
        ['label'] = 'cocaine_packaged',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'cocaine_packaged.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['chemicals']                    = {
        ['name'] = 'chemicals',
        ['label'] = 'chemicals',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'chemicals.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['meth']                         = {
        ['name'] = 'meth',
        ['label'] = 'meth',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'meth.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['meth_packaged']                = {
        ['name'] = 'meth_packaged',
        ['label'] = 'meth_packaged',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'meth_packaged.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['sorted_money']                 = {
        ['name'] = 'sorted_money',
        ['label'] = 'sorted_money',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'sorted_money.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['package_money']                = {
        ['name'] = 'package_money',
        ['label'] = 'package_money',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'package_money.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },

    -- Backpack
    ['backpack']                     = {
        ['name'] = 'backpack',
        ['label'] = 'Backpack',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'backpack.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['backpack2']                    = {
        ['name'] = 'backpack2',
        ['label'] = 'backpack2',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'backpack2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['briefcase']                    = {
        ['name'] = 'briefcase',
        ['label'] = 'briefcase',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'briefcase.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },
    ['paramedicbag']                 = {
        ['name'] = 'paramedicbag',
        ['label'] = 'paramedicbag',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'paramedicbag.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'No have'
    },

    -- Parachute
    ['parachute_rainbow']            = {
        ['name'] = 'parachute_rainbow',
        ['label'] = 'Rainbow Parachute',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'parachute_rainbow.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },
    ['parachute_darkred']            = {
        ['name'] = 'parachute_darkred',
        ['label'] = 'Darkred Parachute',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'parachute_darkred.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },
    ['parachute_yellow']             = {
        ['name'] = 'parachute_yellow',
        ['label'] = 'Yellow Parachute',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'parachute_yellow.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },
    ['parachute_red']                = {
        ['name'] = 'parachute_red',
        ['label'] = 'Red Parachute',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'parachute_red.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },
    ['parachute_white']              = {
        ['name'] = 'parachute_white',
        ['label'] = 'White Parachute',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'parachute_white.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },
    ['parachute_blue']               = {
        ['name'] = 'parachute_blue',
        ['label'] = 'Blue Parachute',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'parachute_blue.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },
    ['parachute_black']              = {
        ['name'] = 'parachute_black',
        ['label'] = 'Black Parachute',
        ['weight'] = 4000,
        ['type'] = 'item',
        ['image'] = 'parachute_black.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A very nice parachute'
    },

    -- Smartphone
    ['cryptostick']                  = {
        ['name'] = 'cryptostick',
        ['label'] = 'Crypto Stick',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'cryptostick.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'A suspicious USB...'
    },
    ['phone_dongle']                 = {
        ['name'] = 'phone_dongle',
        ['label'] = 'Phone Dongle',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'phone_dongle.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Telephone key to make a bypass, maybe...'
    },
    ['powerbank']                    = {
        ['name'] = 'powerbank',
        ['label'] = 'Power Bank',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'powerbank.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Portable charger for high-end phones'
    },
    ['phone']                        = {
        ['name'] = 'phone',
        ['label'] = 'Classic Phone',
        ['weight'] = 150,
        ['type'] = 'item',
        ['image'] = 'phone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'
    },
    ['black_phone']                  = {
        ['name'] = 'black_phone',
        ['label'] = 'Black Phone',
        ['weight'] = 150,
        ['type'] = 'item',
        ['image'] = 'black_phone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'
    },
    ['yellow_phone']                 = {
        ['name'] = 'yellow_phone',
        ['label'] = 'Yellow Phone',
        ['weight'] = 150,
        ['type'] = 'item',
        ['image'] = 'yellow_phone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'
    },
    ['red_phone']                    = {
        ['name'] = 'red_phone',
        ['label'] = 'Red Phone',
        ['weight'] = 150,
        ['type'] = 'item',
        ['image'] = 'red_phone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'
    },
    ['green_phone']                  = {
        ['name'] = 'green_phone',
        ['label'] = 'Green Phone',
        ['weight'] = 150,
        ['type'] = 'item',
        ['image'] = 'green_phone.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'
    },

    -- Fake Number
    ['sim_card']                     = {
        ['name'] = 'sim_card',
        ['label'] = 'SIM Card',
        ['weight'] = 1,
        ['type'] = 'item',
        ['image'] = 'sim_card.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'What is this number?'
    },

    -- Banking
    ['creditcard']                   = {
        ['name'] = 'creditcard',
        ['label'] = 'Credit Card',
        ['weight'] = 0,
        ['type'] = 'item',
        ['image'] = 'creditcard.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = false,
        ['combinable'] = nil,
        ['description'] = 'Visa card, can be used via ATM'
    },

    -- Trading Cards
    ['tradingcard_psa']              = {
        ['name'] = 'tradingcard_psa',
        ['label'] = 'Card Psa',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'tradingcard_psa.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Letter verified with PSA, lets wait for your qualification!'
    },
    ['tradecard_stash']              = {
        ['name'] = 'tradecard_stash',
        ['label'] = 'Card Book',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'tradecard_stash.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Album for collectible cards!'
    },
    ['tradingcard_basic']            = {
        ['name'] = 'tradingcard_basic',
        ['label'] = 'Card Basic',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'tradingcard_basic.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Basic letter, it will serve for your collection'
    },
    ['tradingcard_rare']             = {
        ['name'] = 'tradingcard_rare',
        ['label'] = 'Card Rare',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'tradingcard_rare.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'This letter is strange, how crazy...'
    },
    ['tradingcard_legendary']        = {
        ['name'] = 'tradingcard_legendary',
        ['label'] = 'Card Legendary',
        ['weight'] = 10,
        ['type'] = 'item',
        ['image'] = 'tradingcard_legendary.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'A card of peculiar rarity, I would say legendary!'
    },
    ['tradingcard_booster_pack1']    = {
        ['name'] = 'tradingcard_booster_pack1',
        ['label'] = 'Card Booster Pack 1',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'tradingcard_booster_pack1.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pack with random TCG cards'
    },
    ['tradingcard_booster_pack2']    = {
        ['name'] = 'tradingcard_booster_pack2',
        ['label'] = 'Card Booster Pack 2',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'tradingcard_booster_pack2.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'Pack with random TCG cards'
    },
    ['radingcard_album']             = {
        ['name'] = 'radingcard_album',
        ['label'] = 'Album',
        ['weight'] = 50,
        ['type'] = 'item',
        ['image'] = 'radingcard_album.png',
        ['unique'] = true,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = 'An album to put your TCG cards'
    },
}
