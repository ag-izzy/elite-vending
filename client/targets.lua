local QBCore = exports['qb-core']:GetCoreObject()

local soda = {
    'prop_vend_soda_02',
    'prop_vend_soda_01',
    'prop_vend_fridge01',    
}

local cafe = {
    'prop_vend_coffe_01', 
}

local food = {
    'prop_vend_snak_01', 
    'prop_vend_snak_01_tu', 
}

local Water = {
    'prop_watercooler', 
    'prop_watercooler_dark', 
    'prop_vend_water_01', 
}

local Vending = {
    'prop_watercooler', 
    'prop_watercooler_dark', 
    'prop_vend_water_01', 
    'prop_vend_snak_01', 
    'prop_vend_snak_01_tu', 
    'prop_vend_coffe_01', 
    'prop_vend_soda_02',
    'prop_vend_soda_01',
    'prop_vend_fridge01',   
}

CreateThread(function()
    exports['qb-target']:AddTargetModel(soda, {
        options = {
            {
                event = "vending:Soda",
                icon = "fas fa-beer",
                label = Lang:t("targets.soft_drinks"),
            },
            
        },
        distance = 2.5,
    })

    exports['qb-target']:AddTargetModel(cafe, {
        options = {
            {
                event = "vending:Cafe",
                icon = "fas fa-mug-hot",
                label = Lang:t("targets.cafe_machine"),
            },
            
        },
        distance = 2.5,
    })

    exports['qb-target']:AddTargetModel(food, {
        options = {
            {
                event = "vending:Food",
                icon = "fas fa-pizza-slice",
                label = Lang:t("targets.food"),
            },
            
        },
        distance = 2.5,
    })
    
    exports['qb-target']:AddTargetModel(Water, {
        options = {
            {
                event = "vending:Water",
                icon = "fas fa-glass-whiskey",
                label = Lang:t("targets.water"),
            },
            
        },
        distance = 2.5,
    })
    exports['qb-target']:AddTargetModel(Vending, {
        options = {
            {
                event = "vending:Steal",
                icon = "fas fa-mask",
                label = Lang:t("targets.steal_vending"),
            },
            
        },
        distance = 2.5,
    })

    exports['qb-target']:AddTargetModel('a_m_y_business_02', {
        options = {
            {
                event = "vending:CoinExchange",
                icon = "fas fa-universal-access",
                label = Lang:t("targets.ped_sell"),
            },
            
        },
        distance = 2.5,
    })
    
end)