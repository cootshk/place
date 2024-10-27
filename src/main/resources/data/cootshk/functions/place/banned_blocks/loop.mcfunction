$scoreboard players set i PlaceSettings $(i)
$execute store success score ShouldBreak PlaceSettings run data get storage cootshk:place BannedBlocks[$(i)]
execute if score ShouldBreak PlaceSettings matches 0 run return 0
$function cootshk:place/banned_blocks/item with storage cootshk:place BannedBlocks[$(i)]
scoreboard players add i PlaceSettings 1
execute store result storage cootshk:place i int 1.0 run scoreboard players get i PlaceSettings
function cootshk:place/banned_blocks/loop with storage cootshk:place