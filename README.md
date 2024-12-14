# RedM Discord Rich Presence

A basic and optimized script that provides Rich Presence for players playing on the server. This script is independent of what framework your server is using. If you are using VORP then this is not needed as they already provide Rich Presence in [vorp_essentials] > vorp_core > config.lua

## Screenshot

![Screenshot](https://i.imgur.com/OU3hUSO.png)

## Installation

1. Simply drag the folder into your server resources and ensure the folder in your resources.cfg

```bash
ensure redm_discord_rich_presence 
```

2. Go to the client.lua and add your discord App ID which can be found on your discord developer portal. (Ensure a new app has been created and named 

![screenshot](https://i.imgur.com/rvQNCNW.png)

3. Go to the Rich Presence Tab on the Developer Portal and upload a logo that you want your rich presence to display. Copy the name of the asset and paste the name in the client.lua > SetDiscordRichPresenceAsset('logo') [Change the logo to your asset's name]

![screenshot](https://i.imgur.com/BdLQTUA.png)

4. Change around client.lua as per your liking. Do it at your own risk. You can change the text  SetRichPresence and the links for the buttons along with their titles. I will add a config.lua file in the future that will allow users to change the presence settings without messing up the client.lua file.
