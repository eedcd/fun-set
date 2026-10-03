$execute in minecraft:overworld if block $(mapx) $(y) 0 #minecraft:air run return 0
$execute in minecraft:overworld run data modify storage lp:presummon_dict map_blocks append from block $(mapx) $(y) 0 Items
$scoreboard players set a lp.temp $(y)
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp y int 1 run scoreboard players get a lp.temp
function lp:game/prepare/scan_map_layers with storage lp:temp
