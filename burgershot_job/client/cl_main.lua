ESX = exports["es_extended"]:getSharedObject()

-- Creating Blip --
function blipShown()
    local blipShownValue = Config.BlipShown or false
    return blipShownValue
end

local blip = nil

Citizen.CreateThread(function()
    local blipCoords = Config.BlipCoords
    blip = AddBlipForCoord(blipCoords.x, blipCoords.y, blipCoords.z)

    while true do
        Citizen.Wait(0)

        if blipShown() then
            -- Update blip properties if it needs to change dynamically
            SetBlipSprite(blip, 136)
            SetBlipColour(blip, 5)
            SetBlipScale(blip, 1.0)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Config.BlipName or "Burgershot")
            EndTextCommandSetBlipName(blip)
        else
            
            RemoveBlip(blip)
        end
    end
end)

-- Now rest of code --
Citizen.CreateThread(function()
    for locationName, coords in pairs(Config.Locations) do
        exports.ox_target:addBoxZone({
            coords = coords,
            size = vec3(2, 2, 2),
            rotation = 45,
            debug = drawZones,
            options = {
                {
                    name = 'burgershot',
                    event = 'burgershot:debug',
                    icon = 'fa-solid fa-box',
                    label = locationName,
                    distance = 2.5,
                    onSelect = function(data)
                        if locationName == "Disk" then
                            exports.ox_inventory:openInventory('stash', { id = 'burgershot_counter' })
                        else

                            local playerJob = ESX.GetPlayerData().job.name

                            if playerJob == 'burgershot' then
                                

                            -- Burgare --
                            if locationName == "Flippa Burgare" then
                                lib.showContext('burgershot_burgermenu')

                                -- Drickor --
                            elseif locationName == "Dispensera Dricka" then
                                lib.showContext('burgershot_drickmenu')

                                -- Pommes
                            elseif locationName == "Fritera Pommes" then
                                lib.showContext('burgershot_pommesmenu')

                                -- Skära Grönsaker
                            elseif locationName == "Skär Grönsaker" then
                                lib.showContext('burgershot_cutgreens')

                                -- Diska
                            elseif locationName == "Diska" then
                                lib.showContext('burgershot_washdishes')

                                -- Skitet mellan kassan och köket
                            elseif locationName == "Lämna Maten" then
                                exports.ox_inventory:openInventory('stash', { id = 'burgershot_food' })

                            elseif locationName == "Tag Maten" then
                                exports.ox_inventory:openInventory('stash', { id = 'burgershot_food' })
                            end
                        else
                            exports["cockatoos_notify"]:notify('Du jobbar inte här!', 'Tjuvar är inte tillåtna här!', 'warn')
                        end
                    end
                end
                }
            },
        })
    end
end)
