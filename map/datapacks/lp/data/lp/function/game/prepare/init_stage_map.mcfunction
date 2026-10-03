# 抽取地图
# 方块层 init 时已缓存好，这里只抽卡+载入，不再扫
bossbar set lp:init value 2
bossbar set lp:init name ["",{"text":"初始化 ","color":"aqua","bold":true},{"text":"| ","color":"dark_gray"},{"text":"抽取地图 ","color":"white"},{"text":"(2/4)","color":"gray"}]

data remove storage lp:game map_name
execute store result score ret lp.temp run function lp:game/prepare/scan_pick_map
execute if score ret lp.temp matches -1 run return run function lp:game/error/no_map
execute if score ret lp.temp matches -2 run return run function lp:game/error/unavailable_map
execute store result storage lp:temp mapx int 1 run scoreboard players get mapx lp.temp
function lp:game/prepare/macro/get_map_name with storage lp:temp
execute unless data storage lp:game map_name run return run function lp:game/error/map_name_not_found

# 载入方块层，索引用 map_i
execute store result storage lp:temp mi int 1 run scoreboard players get map_i lp.temp
function lp:game/prepare/load_map_blocks with storage lp:temp
