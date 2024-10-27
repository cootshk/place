# This function is run as every player
execute if score @s BypassPlaceTimer matches 1 run return 2
execute if score @s NextPlaceTime > GlobalTimer PlaceSettings run gamemode spectator @s
execute unless score @s NextPlaceTime > GlobalTimer PlaceSettings run gamemode creative @s
execute if score @s NextPlaceTime < GlobalTimer PlaceSettings store result score @s NextPlaceTime run scoreboard players get GlobalTimer PlaceSettings
function cootshk:place/banned_blocks/start