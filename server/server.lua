local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('vending:server:Steal', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local chance = math.random(0,100)

    if chance < 35 then
        Player.Functions.AddItem("coin", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coin"], "add")
    else
        TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.nothing"), "error")
    end

end)

RegisterNetEvent('vending:server:exchange', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 

        Player.Functions.RemoveItem("coin", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coin"], "remove")
        Player.Functions.AddMoney("cash", 30, "money")
        TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.add_money"), "success")


end)

