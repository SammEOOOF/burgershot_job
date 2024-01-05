ESX = exports["es_extended"]:getSharedObject()

-- Example: Triggering the event when a menu option is selected
lib.registerContext({
    id = 'burgershot_drickmenu',
    title = 'Dispensera Dricka',
    options = {
        {
            title = 'eCola',
            description = 'Dispensera eCola',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar eCola',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'ecola', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'eCola'},
                {label = 'Antal', value = 1}
            }
        },
        {
            title = 'eCola Diet',
            description = 'Dispensera eCola Diet',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar eCola Diet',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'ecoladiet', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'eCola Diet'},
                {label = 'Antal', value = 1}
            }
        },
        {
            title = 'Sprunk',
            description = 'Dispensera Sprunk',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar Sprunk',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'sprunk', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'Sprunk'},
                {label = 'Antal', value = 1}
            }
        },
        {
            title = 'Sprunk Light',
            description = 'Dispensera Sprunk Light',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar Sprunk Light',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'sprunklight', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'Sprunk Light'},
                {label = 'Antal', value = 1}
            }
        },
        {
            title = 'Burgershot Läsk',
            description = 'Dispensera Burgershot Läsk',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar Burgershot Läsk',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_softdrink', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'Burgershot Läsk'},
                {label = 'Antal', value = 1}
            }
        },
        {
            title = 'Burgershot Kaffe Vanilj',
            description = 'Dispensera Burgershot Kaffe Vanilj',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar Burgershot Kaffe Vanilj',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_coffee2', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'Burgershot Kaffe Vanilj'},
                {label = 'Antal', value = 1}
            }
        },
        {
            title = 'Burgershot Kaffe',
            description = 'Dispensera Burgershot Kaffe',
            icon = 'bars',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000, -- 5 sekunder i ms
                    label = 'Dispenserar Burgershot Kaffe',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'mp_safehousevagos@boss',
                        clip = 'vagos_boss_keyboard_b'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_coffee', 1) else print('Error') end
            end,
            metadata = {
                {label = 'Dricka', value = 'Burgershot Kaffe'},
                {label = 'Antal', value = 1}
            }
        },
    }
})

-- Burgare Meny --
lib.registerContext({
    id = 'burgershot_burgermenu',
    title = 'Flippa Burgare',
    options = {
        {
            title = 'Bacon Cheeseburger',
            description = 'Flippa ihop en Bacon Cheeseburgare',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Flippar en Bacon Cheeseburgare',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'bacon_cheeseburger', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Bacon Cheeseburgare'},
                {label = 'Antal', value = 1}
              }
        },

        -- Heart Stopper
        {
            title = 'Heart Stopper',
            description = 'Flippa ihop en Heartstopper',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 30000, -- 30 sekunder i ms
                    label = 'Flippar en Heartstopper',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_heartstopper', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Heartstopper 3000g Kött'},
                {label = 'Antal', value = 1}
              }
        },

        -- Goatwrap
        {
            title = 'Goatwrap',
            description = 'Flippa ihop en Goatwrap',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Flippar en Goatwrap',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_goatwrap', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Goatwrap'},
                {label = 'Antal', value = 1}
              }
        },

                -- burger_chickenwrap
        {
            title = 'Chickenwrap',
            description = 'Flippa ihop en Chickenwrap',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Flippar en Chickenwrap',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_chickenwrap', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Chickenwrap'},
                {label = 'Antal', value = 1}
              }
        },

        -- burger_bleeder
        {
            title = 'Bleeder Burgare',
            description = 'Flippa ihop en Bleeder Burgare',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Flippar en Bleeder Burgare',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_bleeder', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Bleeder Burgare'},
                {label = 'Antal', value = 1}
              }
        },
        -- burger_hamburg
        {
            title = 'Hamburgare',
            description = 'Flippa ihop en Burgare',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Flippar en Burgare',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_hamburg', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Hamburgare'},
                {label = 'Antal', value = 1}
              }
        },
        -- burger_moneyshot
        {
            title = 'Moneyshot',
            description = 'Flippa ihop en Moneyshot Burgare',
            icon = 'fa-solid fa-burger',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Flippar en Moneyshot Burgare',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_moneyshot', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Burgare', value = 'Moneyshot Burgare'},
                {label = 'Antal', value = 1}
              }
        },
    }
})

-- Fritering --
lib.registerContext({
    id = 'burgershot_pommesmenu',
    title = 'Fritering',
    options = {
        {
            title = 'Shotnuggets',
            description = 'Fritera Shotnuggets',
            icon = 'fa-solid fa-bacon',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Friterar Shotnuggets',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_shotnuggets', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Fritering', value = 'Shotnuggets'},
                {label = 'Antal', value = 1}
              }
        },
        {
            title = 'Shotrings',
            description = 'Fritera Lökringar',
            icon = 'fa-solid fa-bacon',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Friterar Shotrings',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'burger_shotrings', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Fritering', value = 'Shotrings'},
                {label = 'Antal', value = 1}
              }
        },
        {
            title = 'Guld Lökringar',
            description = 'Fritera Guld Lökringar',
            icon = 'fa-solid fa-bacon',
            onSelect = function()
                if lib.progressBar({
                    duration = 10000, -- 10 sekunder i ms
                    label = 'Friterar Guldiga Lökringar',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'family_5_mcs_5-0',
                        clip = 'csb_burgerdrug_dual-0'
                    },
                }) then TriggerServerEvent('burgershot_job:giveItem', 'golden_rings', 1) else print('Error') end
              end,
              metadata = {
                {label = 'Fritering', value = 'Guldiga Lökringar'},
                {label = 'Antal', value = 1}
              }
        }
    }
})

-- Skära Grönsaker --
lib.registerContext({
    id = 'burgershot_cutgreens',
    title = 'Skär Grönsaker',
    options = {
        {
            title = 'Skär Grönsaker',
            description = 'Detta gör inget, bara en animation',
            icon = 'fa-solid fa-box',
            onSelect = function()
                if lib.progressBar({
                    duration = 60000, -- 60 sekunder i ms
                    label = 'Skär Grönsaker',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'anim@amb@business@cfm@cfm_cut_sheets@',
                        clip = 'cut_guilotine_v1_billcutter'
                    },
                }) then print('varför gjorde du det?!?!?') else print('Error') end
              end,
              metadata = {
                {label = 'Skalning av', value = 'Potatis'},
                {label = 'Tvättning av', value = 'Salladen'}
              }
        }
    }
})

-- Skära Grönsaker --
lib.registerContext({
    id = 'burgershot_washdishes',
    title = 'Diska',
    options = {
        {
            title = 'Diska',
            description = 'Detta gör inget, bara en animation',
            icon = 'fa-solid fa-box',
            onSelect = function()
                if lib.progressBar({
                    duration = 60000, -- 60 sekunder i ms
                    label = 'Diskar',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = false,
                        move = true,
                    },
                    anim = {
                        dict = 'missmic2_washing_face',
                        clip = 'michael_washing_face'
                    },
                }) then print('varför gjorde du det?!?!?') else print('Error') end
              end,
              metadata = {
                {label = 'Diskning av', value = 'Tallrickar'}
              }
        }
    }
})