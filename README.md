# Name Colours
This is a basic minecraft datapack, designed to colour the names of players based on what status they have. It also updates based on if a player is AFK or not. It will adjust player names as follows:

| Status      | Colour    | Description                                                 |
|-------------|-----------|-------------------------------------------------------------|
| recording   | red       | Player is currently recording for videos or livestreaming   |
| available   | green     | Player is happy to be in the recording                      |
| unavailable | yellow    | Player would rather be left alone during the recording      |


Additionally, AFK players will have their names suffixed with a gray **\[AFK]** tag after 5 minutes.

The following image is a few images of the status / AFK combinations, as well as the welcome and trigger messages.

![](link)

**Please note that this datapack uses teams to allocate name colours. If you wish to use other teams, you will need to temporarily remove this datapack since minecraft currently only allows one team per player.**

## Installation / Removal
To install the datapack, simply drag the downloaded zip file into the datapack folder of your world.
To uninstall, type /function stream_status_uninstall. This will remove all teams, scoreboard values, and tags related to the datapack. Then remove the zip file from the datapacks folder and reload the world.