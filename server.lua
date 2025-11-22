local doors = {}

RegisterNetEvent('doorlock:toggle')
AddEventHandler('doorlock:toggle', function(doorId)
    doors[doorId] = not doors[doorId]
    TriggerClientEvent('doorlock:update', -1, doorId, doors[doorId])
end)

RegisterNetEvent('doorlock:requestSync')
AddEventHandler('doorlock:requestSync', function()
    TriggerClientEvent('doorlock:fullSync', source, doors)
end)
