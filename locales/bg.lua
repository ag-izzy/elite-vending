local Translations = {
    notify = {
        nothing = "Освен прах - друго няма...",
        nothing_coin = "Нямаш монети..",
        add_money = "Получи $30!",
        enough = "Нямаш монети!"
    },
    progress = {
        vending_progress = "Пускаш монета в машината...",
        vending_stealprogress = "Претърсваш машината..."
    },
    targets = {
        soft_drinks = "Безалкохолни напитки",
        cafe_machine = "Кафе машина",
        food = "Вендинг за храна",
        water = "Воден диспенсер",
        steal_vending = "Претърси вендинг машината",
        ped_sell = "Говори с човека"
    },
    labels = {
        soft = "Безалкохолни напитки",
        cafe = "Кафе машина",
        food = "Вендинг за храна",
        water = "Воден диспенсер",
    },
    menu = {
        title = "Обменете монети в долари",
        description = "1 монета = $30" 
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})