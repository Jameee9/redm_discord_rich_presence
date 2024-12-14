local DISCORD_APP_ID = 1122335566778819982   -- // Enter your Discord app ID here

Citizen.CreateThread(function()
    SetDiscordAppId(DISCORD_APP_ID)
    
    while true do
        local playerName = GetPlayerName(PlayerId())
        local serverId = GetPlayerServerId(PlayerId())
        local details = "Playing as " .. playerName
        local state = "ID: " .. serverId
        
        SetRichPresence("Walking the Dusty Trails | " .. serverId) -- // Text that appears below the Server Name // This could also be changed using the above Locals.

        -- // SetRichPresence(playerName .. " | " .. serverId) -- // This would show the player name and ID in the status

        SetDiscordRichPresenceAsset('logo') -- Main Logo Name should match with the image uploaded on your discord developer portal
        SetDiscordRichPresenceAssetText('Roaming the Dusty Trails of 1895') -- // Hover Text for the logo
        -- SetDiscordRichPresenceAssetSmall('Key Name') -- // Setting Small Image. Name should match with the image uploaded on your discord developer portal
        SetDiscordRichPresenceAssetSmallText(details) -- // Hover text for small image

        Citizen.Wait(60000) -- Refresh Rate // 60 seconds
    end
end)

RegisterNetEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
    SetDiscordRichPresenceAction(0, "Discord Link Title", "https://discord.gg/link") --// Button One
    SetDiscordRichPresenceAction(1, "Link Title 2", "https://www.Link2.com") --// Button Two
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        SetRichPresence('')
    end
end)
