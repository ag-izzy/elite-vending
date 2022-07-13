local QBCore = exports['qb-core']:GetCoreObject()

--events

RegisterNetEvent('vending:Soda', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {Config.Emote})
    QBCore.Functions.Progressbar("coin", Lang:t("progress.vending_progress"), 2500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent('vending:SodaShop')
    end, function() -- Cancelled
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, "fas fa-dollar")
end)

RegisterNetEvent('vending:Cafe', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {Config.Emote})
    QBCore.Functions.Progressbar("coin", Lang:t("progress.vending_progress"), 2500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent('vending:CafeShop')
    end, function() -- Cancelled
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, "fas fa-dollar")
end)

RegisterNetEvent('vending:Food', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {Config.Emote})
    QBCore.Functions.Progressbar("coin", Lang:t("progress.vending_progress"), 2500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent('vending:FoodShop')
    end, function() -- Cancelled
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, "fas fa-dollar")
end)

RegisterNetEvent('vending:Water', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {Config.Emote})
    QBCore.Functions.Progressbar("coin", Lang:t("progress.vending_progress"), 2500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent('vending:WaterShop')
    end, function() -- Cancelled
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, "fas fa-glass-whiskey")
end)

RegisterNetEvent('vending:Steal', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {Config.StealEmote})
    QBCore.Functions.Progressbar("steal_vending", Lang:t("progress.vending_stealprogress"), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('vending:server:Steal')
    end, function() -- Cancelled
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, "fas fa-mask")
end)


RegisterNetEvent('vending:SodaShop')
AddEventHandler('vending:SodaShop',function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", Lang:t("labels.soft"), Config.Soda)
end)

RegisterNetEvent('vending:CafeShop')
AddEventHandler('vending:CafeShop',function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", Lang:t("labels.cafe"), Config.Cafe)
end)

RegisterNetEvent('vending:FoodShop')
AddEventHandler('vending:FoodShop',function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", Lang:t("labels.food"), Config.Food)
end)

RegisterNetEvent('vending:WaterShop')
AddEventHandler('vending:WaterShop',function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", Lang:t("labels.water"), Config.Water)
end)


--menu nh-context

RegisterNetEvent("vending:CoinExchange")
AddEventHandler('vending:CoinExchange',function()
    local sendMenu = {}
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = Lang:t("menu.title"),
        txt = Lang:t("menu.description"),
        params = { 
            event = "vending:HasItem",
        }
    })

    
    TriggerEvent('nh-context:sendMenu', sendMenu)
end)

--check for item "coin"
RegisterNetEvent("vending:HasItem")
AddEventHandler('vending:HasItem',function()
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
        if hasItem then
            TriggerServerEvent("vending:server:exchange")              
        else
            QBCore.Functions.Notify(Lang:t("notify.enough"), 'error', 5000)
        end
    end, "coin")
end)



