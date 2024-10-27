##
 # main.mcfunction
 # place
 #
 # Created by Cootshk.
##

execute as @a unless score @s NextPlaceTime matches 1.. run scoreboard players set @s NextPlaceTime 1

# Increment timer
scoreboard players add GlobalTimer PlaceSettings 1

execute as @a run function cootshk:place/player

execute store result storage cootshk:place TimeTillNextPlace int 1.0 run scoreboard players get TimeTillNextPlace PlaceSettings