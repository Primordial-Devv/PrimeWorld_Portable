local rentalCoordsVec4 = {
    Airport = vector4(-1034.2683, -2732.4226, 20.1692, 150.1555),
    JobCenter = vector4(-313.9739, -1034.5448, 30.5305, 346.8280),
    Hotel = vector4(-1294.8552, 278.1808, 64.6427, 329.4485)
}

local rentalCoordsVec3 = {
    Airport = vector3(-1034.2683, -2732.4226, 20.1692),
    JobCenter = vector3(-313.9739, -1034.5448, 30.5305),
    Hotel = vector3(-1294.8552, 278.1808, 64.6427),
}

local pedModel = "IG_Mechanic_01"

--  THREAD FOR BLIP
CreateThread(function()
    for _, coords in pairs(rentalCoordsVec3) do
        local paramBlip = AddBlipForCoord(coords)
        SetBlipSprite(paramBlip, 1)
        SetBlipDisplay(paramBlip, 4)
        SetBlipScale(paramBlip, 0.8)
        SetBlipColour(paramBlip, 3)
        SetBlipAsShortRange(paramBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Vehicle Rental")
        EndTextCommandSetBlipName(paramBlip)
    end
end)

--  THREAD FOR Spawning NPCs
CreateThread(function()
    lib.requestModel(pedModel)
    for _, coords in pairs(rentalCoordsVec4) do
        local paramNpc = CreatePed(4, pedModel, coords.x, coords.y, coords.z - 1, coords.w, false, true)
        SetEntityInvincible(paramNpc, true)
        FreezeEntityPosition(paramNpc, true)
        SetBlockingOfNonTemporaryEvents(paramNpc, true)
        SetModelAsNoLongerNeeded(pedModel)
    end
end)

--  THREAD FOR Target System
CreateThread(function()
    for _, coords in pairs(rentalCoordsVec3) do
        exports.ox_target:addBoxZone({
            coords = vec3(coords.x, coords.y, coords.z),
            size = {0.6, 0.6, 1.0},
            debug = true,
            options = {
                {
                    label = "Rent a vehicle",
                    icon = "fas fa-car",
                    onSelect = function()
                        RentalMainmenu()
                    end
                }
            }
        })
    end
end)