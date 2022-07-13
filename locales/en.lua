local Translations = {
    notify = {
        nothing = "There was nothing in the machine but dust...",
        nothing_coin = "You have no coins..",
        add_money = "Received $30!",
        enough = "You don't have enough coins!"
    },
    progress = {
        vending_progress = "You insert a coin into the machine...",
        vending_stealprogress = "Stealing a vending machine..."
    },
    targets = {
        soft_drinks = "Soft Drinks",
        cafe_machine = "Cafe Machine",
        food = "Food Machine",
        water = "Water Dispenser",
        steal_vending = "Steal Vending Machine",
        ped_sell = "Talk"
    },
    labels = {
        soft = "Soft Drinks",
        cafe = "Cafe Machine",
        food = "Food Machine",
        water = "Water Dispenser",
    },
    menu = {
        title = "Exchange coin to dollars",
        description = "1 coin = $30" 
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})