local pickups = {}

CreateThread(function()
	while not Config.Multichar do
		Wait(100)

		if NetworkIsPlayerActive(PlayerId()) then
			exports.spawnmanager:setAutoSpawn(false)
			DoScreenFadeOut(0)
			Wait(500)
			TriggerServerEvent('esx:onPlayerJoined')
			break
		end
	end
end)

RegisterNetEvent("esx:requestModel", function(model)
	ESX.Streaming.RequestModel(model)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer, isNew, skin)
	ESX.PlayerData = xPlayer

	exports.spawnmanager:spawnPlayer({
		x = ESX.PlayerData.coords.x,
		y = ESX.PlayerData.coords.y,
		z = ESX.PlayerData.coords.z + 0.25,
		heading = ESX.PlayerData.coords.heading,
		model = `mp_m_freemode_01`,
		skipFade = false
	}, function()
		TriggerServerEvent('esx:onPlayerSpawn')
		TriggerEvent('esx:onPlayerSpawn')
		TriggerEvent('esx:restoreLoadout')

		if isNew then
			TriggerEvent('skinchanger:loadDefaultModel', skin.sex == 0)
		elseif skin then
			TriggerEvent('skinchanger:loadSkin', skin)
		end

		TriggerEvent('esx:loadingScreenOff')
		ShutdownLoadingScreen()
		ShutdownLoadingScreenNui()
	end)

	ESX.PlayerLoaded = true

	while ESX.PlayerData.ped == nil do Wait(20) end

	-- Do not remove this, it's used for enabling the PVP system.
	----------
	SetCanAttackFriendly(ESX.PlayerData.ped, true, false)
	NetworkSetFriendlyFireOption(true)
	----------

	local playerId = PlayerId()
    local metadata = ESX.PlayerData.metadata
    if metadata.health then
        SetEntityHealth(ESX.PlayerData.ped, metadata.health)
    end

    if metadata.armor and metadata.armor > 0 then
        SetPedArmour(ESX.PlayerData.ped, metadata.armor)
    end

	-- Do not remove this, it's used for disabling the drops of weapons from NPCs.
	----------
	local weaponPickups = { `PICKUP_WEAPON_CARBINERIFLE`, `PICKUP_WEAPON_PISTOL`, `PICKUP_WEAPON_PUMPSHOTGUN` }
	for i = 1, #weaponPickups do
		ToggleUsePickupsForPlayer(playerId, weaponPickups[i], false)
	end
	----------

	if Config.DisableVehicleSeatShuff then
		AddEventHandler('esx:enteredVehicle', function(vehicle, _, seat)
			if seat == 0 then
				SetPedIntoVehicle(ESX.PlayerData.ped, vehicle, 0)
				SetPedConfigFlag(ESX.PlayerData.ped, 184, true)
			end
		end)
	end

	-- Do not remove this, it's used for disabling the regen of health.
	----------
	SetPlayerHealthRechargeMultiplier(playerId, 0.0)
	----------

	-- Do not remove this, it's used for disabling the dispatch services from GTAV (cops, ems, etc).
	----------
	for i = 1, 15 do
		EnableDispatchService(i, false)
	end
	----------

	-- Disable Scenarios
	if Config.DisableScenarios then
		local scenarios = {
			'WORLD_VEHICLE_ATTRACTOR',
			'WORLD_VEHICLE_AMBULANCE',
			'WORLD_VEHICLE_BICYCLE_BMX',
			'WORLD_VEHICLE_BICYCLE_BMX_BALLAS',
			'WORLD_VEHICLE_BICYCLE_BMX_FAMILY',
			'WORLD_VEHICLE_BICYCLE_BMX_HARMONY',
			'WORLD_VEHICLE_BICYCLE_BMX_VAGOS',
			'WORLD_VEHICLE_BICYCLE_MOUNTAIN',
			'WORLD_VEHICLE_BICYCLE_ROAD',
			'WORLD_VEHICLE_BIKE_OFF_ROAD_RACE',
			'WORLD_VEHICLE_BIKER',
			'WORLD_VEHICLE_BOAT_IDLE',
			'WORLD_VEHICLE_BOAT_IDLE_ALAMO',
			'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
			'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
			'WORLD_VEHICLE_BROKEN_DOWN',
			'WORLD_VEHICLE_BUSINESSMEN',
			'WORLD_VEHICLE_HELI_LIFEGUARD',
			'WORLD_VEHICLE_CLUCKIN_BELL_TRAILER',
			'WORLD_VEHICLE_CONSTRUCTION_SOLO',
			'WORLD_VEHICLE_CONSTRUCTION_PASSENGERS',
			'WORLD_VEHICLE_DRIVE_PASSENGERS',
			'WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED',
			'WORLD_VEHICLE_DRIVE_SOLO',
			'WORLD_VEHICLE_FIRE_TRUCK',
			'WORLD_VEHICLE_EMPTY',
			'WORLD_VEHICLE_MARIACHI',
			'WORLD_VEHICLE_MECHANIC',
			'WORLD_VEHICLE_MILITARY_PLANES_BIG',
			'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
			'WORLD_VEHICLE_PARK_PARALLEL',
			'WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN',
			'WORLD_VEHICLE_PASSENGER_EXIT',
			'WORLD_VEHICLE_POLICE_BIKE',
			'WORLD_VEHICLE_POLICE_CAR',
			'WORLD_VEHICLE_POLICE',
			'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
			'WORLD_VEHICLE_QUARRY',
			'WORLD_VEHICLE_SALTON',
			'WORLD_VEHICLE_SALTON_DIRT_BIKE',
			'WORLD_VEHICLE_SECURITY_CAR',
			'WORLD_VEHICLE_STREETRACE',
			'WORLD_VEHICLE_TOURBUS',
			'WORLD_VEHICLE_TOURIST',
			'WORLD_VEHICLE_TANDL',
			'WORLD_VEHICLE_TRACTOR',
			'WORLD_VEHICLE_TRACTOR_BEACH',
			'WORLD_VEHICLE_TRUCK_LOGS',
			'WORLD_VEHICLE_TRUCKS_TRAILERS',
			'WORLD_VEHICLE_DISTANT_EMPTY_GROUND',
			'WORLD_HUMAN_PAPARAZZI'
		}

		for _, v in pairs(scenarios) do
			SetScenarioTypeEnabled(v, false)
		end
	end
	StartServerSyncLoops()
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
end)

RegisterNetEvent('esx:setMaxWeight')
AddEventHandler('esx:setMaxWeight', function(newMaxWeight) ESX.SetPlayerData("maxWeight", newMaxWeight) end)

local function onPlayerSpawn()
	ESX.SetPlayerData('ped', PlayerPedId())
	ESX.SetPlayerData('dead', false)
end

AddEventHandler('playerSpawned', onPlayerSpawn)
AddEventHandler('esx:onPlayerSpawn', onPlayerSpawn)

AddEventHandler('esx:onPlayerDeath', function()
	ESX.SetPlayerData('ped', PlayerPedId())
	ESX.SetPlayerData('dead', true)
end)

AddEventHandler('skinchanger:modelLoaded', function()
	while not ESX.PlayerLoaded do
		Wait(100)
	end
	TriggerEvent('esx:restoreLoadout')
end)

AddEventHandler('esx:restoreLoadout', function()
	ESX.SetPlayerData('ped', PlayerPedId())
end)

-- Credit: https://github.com/LukeWasTakenn, https://github.com/LukeWasTakenn/luke_garages/blob/master/client/client.lua#L331-L352
AddStateBagChangeHandler('VehicleProperties', nil, function(bagName, _, value)
	if not value then
		return
	end

	local netId = bagName:gsub('entity:', '')
	local timer = GetGameTimer()
	while not NetworkDoesEntityExistWithNetworkId(tonumber(netId)) do
		Wait(0)
		if GetGameTimer() - timer > 10000 then
			return
		end
	end

	local vehicle = NetToVeh(tonumber(netId))
	local timer2 = GetGameTimer()
	while NetworkGetEntityOwner(vehicle) ~= PlayerId() do
		Wait(0)
		if GetGameTimer() - timer2 > 10000 then
			return
		end
	end

	ESX.Game.SetVehicleProperties(vehicle, value)
end)

RegisterNetEvent('esx:setAccountMoney')
AddEventHandler('esx:setAccountMoney', function(account)
	for i = 1, #(ESX.PlayerData.accounts) do
		if ESX.PlayerData.accounts[i].name == account.name then
			ESX.PlayerData.accounts[i] = account
			break
		end
	end

	ESX.SetPlayerData('accounts', ESX.PlayerData.accounts)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(Job)
	ESX.SetPlayerData('job', Job)
end)

RegisterNetEvent('esx:registerSuggestions')
AddEventHandler('esx:registerSuggestions', function(registeredCommands)
	for name, command in pairs(registeredCommands) do
		if command.suggestion then
			TriggerEvent('chat:addSuggestion', ('/%s'):format(name), command.suggestion.help, command.suggestion.arguments)
		end
	end
end)

function StartServerSyncLoops()
	return
end

-- Do not remove this, it's used for disabling the default GTA wanted level.
----------
ClearPlayerWantedLevel(PlayerId())
SetMaxWantedLevel(0)
----------

----- Admin commands from esx_adminplus

RegisterNetEvent("esx:tpm")
AddEventHandler("esx:tpm", function()
	local GetEntityCoords = GetEntityCoords
	local GetGroundZFor_3dCoord = GetGroundZFor_3dCoord
	local GetFirstBlipInfoId = GetFirstBlipInfoId
	local DoesBlipExist = DoesBlipExist
	local DoScreenFadeOut = DoScreenFadeOut
	local GetBlipInfoIdCoord = GetBlipInfoIdCoord
	local GetVehiclePedIsIn = GetVehiclePedIsIn

	ESX.TriggerServerCallback("esx:isUserAdmin", function(admin)
		if not admin then
			return
		end
		local blipMarker = GetFirstBlipInfoId(8)
		if not DoesBlipExist(blipMarker) then
			print(TranslateCap('tpm_nowaypoint'))
			return 'marker'
		end

		-- Fade screen to hide how clients get teleported.
		DoScreenFadeOut(650)
		while not IsScreenFadedOut() do
			Wait(0)
		end

		local ped, coords = ESX.PlayerData.ped, GetBlipInfoIdCoord(blipMarker)
		local vehicle = GetVehiclePedIsIn(ped, false)
		local oldCoords = GetEntityCoords(ped)

		-- Unpack coords instead of having to unpack them while iterating.
		-- 825.0 seems to be the max a player can reach while 0.0 being the lowest.
		local x, y, groundZ, Z_START = coords['x'], coords['y'], 850.0, 950.0
		local found = false
		FreezeEntityPosition(vehicle > 0 and vehicle or ped, true)

		for i = Z_START, 0, -25.0 do
			local z = i
			if (i % 2) ~= 0 then
				z = Z_START - i
			end

			NewLoadSceneStart(x, y, z, x, y, z, 50.0, 0)
			local curTime = GetGameTimer()
			while IsNetworkLoadingScene() do
				if GetGameTimer() - curTime > 1000 then
					break
				end
				Wait(0)
			end
			NewLoadSceneStop()
			SetPedCoordsKeepVehicle(ped, x, y, z)

			while not HasCollisionLoadedAroundEntity(ped) do
				RequestCollisionAtCoord(x, y, z)
				if GetGameTimer() - curTime > 1000 then
					break
				end
				Wait(0)
			end

			-- Get ground coord. As mentioned in the natives, this only works if the client is in render distance.
			found, groundZ = GetGroundZFor_3dCoord(x, y, z, false)
			if found then
				Wait(0)
				SetPedCoordsKeepVehicle(ped, x, y, groundZ)
				break
			end
			Wait(0)
		end

		-- Remove black screen once the loop has ended.
		DoScreenFadeIn(650)
		FreezeEntityPosition(vehicle > 0 and vehicle or ped, false)

		if not found then
			-- If we can't find the coords, set the coords to the old ones.
			-- We don't unpack them before since they aren't in a loop and only called once.
			SetPedCoordsKeepVehicle(ped, oldCoords['x'], oldCoords['y'], oldCoords['z'] - 1.0)
			print(TranslateCap('tpm_success'))
		end

		-- If Z coord was found, set coords in found coords.
		SetPedCoordsKeepVehicle(ped, x, y, groundZ)
		print(TranslateCap('tpm_success'))
	end)
end)

local noclip = false
local noclip_pos = vector3(0, 0, 70)
local heading = 0

local function noclipThread()
	while noclip do
		SetEntityCoordsNoOffset(ESX.PlayerData.ped, noclip_pos.x, noclip_pos.y, noclip_pos.z, 0, 0, 0)

		if IsControlPressed(1, 34) then
			heading = heading + 1.5
			if heading > 360 then
				heading = 0
			end

			SetEntityHeading(ESX.PlayerData.ped, heading)
		end

		if IsControlPressed(1, 9) then
			heading = heading - 1.5
			if heading < 0 then
				heading = 360
			end

			SetEntityHeading(ESX.PlayerData.ped, heading)
		end

		if IsControlPressed(1, 8) then
			noclip_pos = GetOffsetFromEntityInWorldCoords(ESX.PlayerData.ped, 0.0, 1.0, 0.0)
		end

		if IsControlPressed(1, 32) then
			noclip_pos = GetOffsetFromEntityInWorldCoords(ESX.PlayerData.ped, 0.0, -1.0, 0.0)
		end

		if IsControlPressed(1, 27) then
			noclip_pos = GetOffsetFromEntityInWorldCoords(ESX.PlayerData.ped, 0.0, 0.0, 1.0)
		end

		if IsControlPressed(1, 173) then
			noclip_pos = GetOffsetFromEntityInWorldCoords(ESX.PlayerData.ped, 0.0, 0.0, -1.0)
		end
		Wait(0)
	end
end

RegisterNetEvent("esx:noclip")
AddEventHandler("esx:noclip", function()
	ESX.TriggerServerCallback("esx:isUserAdmin", function(admin)
		if not admin then
			return
		end

		if not noclip then
			noclip_pos = GetEntityCoords(ESX.PlayerData.ped, false)
			heading = GetEntityHeading(ESX.PlayerData.ped)
		end

		noclip = not noclip
		if noclip then
			CreateThread(noclipThread)
		end

		print(TranslateCap('noclip_message', noclip and Translate('enabled') or Translate('disabled')))
	end)
end)

RegisterNetEvent("esx:killPlayer")
AddEventHandler("esx:killPlayer", function()
	SetEntityHealth(ESX.PlayerData.ped, 0)
end)

RegisterNetEvent("esx:repairPedVehicle")
AddEventHandler("esx:repairPedVehicle", function()
	local ped = ESX.PlayerData.ped
	local vehicle = GetVehiclePedIsIn(ped, false)
	SetVehicleEngineHealth(vehicle, 1000)
	SetVehicleEngineOn(vehicle, true, true)
	SetVehicleFixed(vehicle)
	SetVehicleDirtLevel(vehicle, 0)
end)

RegisterNetEvent("esx:freezePlayer")
AddEventHandler("esx:freezePlayer", function(input)
	local player = PlayerId()
	if input == 'freeze' then
		SetEntityCollision(ESX.PlayerData.ped, false)
		FreezeEntityPosition(ESX.PlayerData.ped, true)
		SetPlayerInvincible(player, true)
	elseif input == 'unfreeze' then
		SetEntityCollision(ESX.PlayerData.ped, true)
		FreezeEntityPosition(ESX.PlayerData.ped, false)
		SetPlayerInvincible(player, false)
	end
end)

ESX.RegisterClientCallback("esx:GetVehicleType", function(cb, model)
	cb(ESX.GetVehicleType(model))
end)

AddStateBagChangeHandler('metadata', 'player:' .. tostring(GetPlayerServerId(PlayerId())), function(_, key, val)
	ESX.SetPlayerData(key, val)
end)

----------
-- REVIVE SYSTEM --
----------
function RespawnPed(ped, coords, heading)
	SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	ClearPedBloodDamage(ped)

	TriggerEvent('esx_basicneeds:resetStatus')
	TriggerServerEvent('esx:onPlayerSpawn')
	TriggerEvent('esx:onPlayerSpawn')
	TriggerEvent('playerSpawned') -- compatibility with old scripts, will be removed soon
end

function EndDeathCam()
	ClearFocus()
	RenderScriptCams(false, false, 0, true, false)
	DestroyCam(cam, false)
	cam = nil
end

RegisterNetEvent('esx_ambulancejob:revive')
AddEventHandler('esx_ambulancejob:revive', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	DoScreenFadeOut(800)

	while not IsScreenFadedOut() do
		Wait(50)
	end

	local formattedCoords = {x = ESX.Math.Round(coords.x, 1), y = ESX.Math.Round(coords.y, 1), z = ESX.Math.Round(coords.z, 1)}

	RespawnPed(playerPed, formattedCoords, 0.0)
	isDead = false
	ClearTimecycleModifier()
	SetPedMotionBlur(playerPed, false)
	ClearExtraTimecycleModifier()
	EndDeathCam()
	DoScreenFadeIn(800)
end)