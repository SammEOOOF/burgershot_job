ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('burgershot_job:giveItem')
AddEventHandler('burgershot_job:giveItem', function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
    end
end)

-- Storage
local storage = {
    id = 'burgershot_food',
    label = 'Burgershot Mat',
    slots = 8,
    weight = 15000,
}

local counter = {
    id = 'burgershot_counter',
    label = 'Burgershot Disk',
    slots = 5,
    weight = 10000,
}

AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        exports.ox_inventory:RegisterStash(storage.id, storage.label, storage.slots, storage.weight, storage.owner)
        exports.ox_inventory:RegisterStash(counter.id, counter.label, counter.slots, counter.weight, counter.owner)
    end
end)