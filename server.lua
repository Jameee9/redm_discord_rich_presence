RegisterServerEvent('requestPlayerCount')
AddEventHandler('requestPlayerCount', function()
    local playerCount = #GetPlayers()
    local source = source
    TriggerClientEvent('receivePlayerCount', source, playerCount)
end)
