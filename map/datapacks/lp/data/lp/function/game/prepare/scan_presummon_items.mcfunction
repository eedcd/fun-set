# 收集
$execute in minecraft:overworld if block $(x) 147 1 #minecraft:air run return 0
$execute in minecraft:overworld run data modify storage lp:presummon_dict items append from block $(x) 147 1 Items[]
data remove storage lp:presummon_dict items[].count
data remove storage lp:presummon_dict items[].Slot
$scoreboard players set a lp.temp $(x)
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp x int 1 run scoreboard players get a lp.temp
function lp:game/prepare/scan_presummon_items with storage lp:temp