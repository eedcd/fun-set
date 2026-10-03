# 获取地图数
data modify storage lp:temp x set value -462
scoreboard players set mn lp.temp -1
function lp:game/prepare/scan_map_count with storage lp:temp
execute if score mn lp.temp matches -1 run return -1

# 随机
scoreboard objectives add lp.map_tried dummy
scoreboard players reset * lp.map_tried
scoreboard players set mnn lp.temp 0
execute store result storage lp:temp mn int 1 run scoreboard players get mn lp.temp
data modify storage lp:temp r set value 0
data modify storage lp:temp c set value 0
return run function lp:game/prepare/random_loop_pick_map with storage lp:temp