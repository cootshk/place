##
 # main.mcfunction
 # place
 #
 # Created by Cootshk.
##

# Increment timer
scoreboard players add GlobalTimer PlaceSettings 1

execute as @a run function cootshk:place/player

execute store result storage cootshk:place TimeTillNextPlace int 1.0 run scoreboard players get TimeTillNextPlace PlaceSettings