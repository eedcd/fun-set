# 获取地图数
$execute in minecraft:overworld if block $(x) 147 0 #minecraft:air run return 0
scoreboard players add mn lp.temp 1
$scoreboard players set a lp.temp $(x)
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp x int 1 run scoreboard players get a lp.temp
function lp:game/prepare/scan_map_count with storage lp:temp