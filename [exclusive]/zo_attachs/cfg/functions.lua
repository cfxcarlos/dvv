zof = {
    hasPermission = function(user_id, perm)
        return vRP.HasPermission(user_id, perm)
    end,

    giveWeapons = function(source, weapons)
        return vRPclient._giveWeapons(source, weapons)
    end,

    getUserId = function(source)
        return vRP.Passport(source)
    end,

    tryFullPayment = function(user_id, price)
        return vRP.PaymentFull(user_id, price)
    end,

    getInventoryItemAmount = function(user_id, item)
        return vRP.ItemAmount(user_id, item)
    end,

    tryGetInventoryItem = function(user_id, item, qtd)
        return vRP.TakeItem(user_id, item, qtd)
    end,
    
    itemNameList = function(item)
        return itemName(item)
    end,

    giveInventoryItem = function(user_id, item, qtd)
        return vRP.GenerateItem(user_id, item, qtd)
    end,

    query = function(nameQuery, data)
        return vRP.Query(nameQuery, data)
    end,
    
    prepare = function(nameQuery, query)
        return vRP.Query(nameQuery, query)
    end,
    
    execute = function(nameQuery)
        return vRP.Query(nameQuery)
    end,
}