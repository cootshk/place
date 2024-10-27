##
 # reset.mcfunction
 # place
 #
 # Created by Cootshk.
##
# Globals
scoreboard objectives add PlaceSettings dummy
# Per player
scoreboard objectives add NextPlaceTime dummy
scoreboard objectives add BypassPlaceTimer dummy
# First run
execute unless score HasInitialized PlaceSettings matches 1 run function cootshk:place/setup