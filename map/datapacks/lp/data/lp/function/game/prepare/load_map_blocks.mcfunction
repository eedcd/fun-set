# 载入缓存的地图方块层，mi 是地图索引
# 命中就直接复制，缺了就现扫一遍
$execute if data storage lp:presummon_dict maps[$(mi)][0][0] run data modify storage lp:presummon_dict map_blocks set from storage lp:presummon_dict maps[$(mi)]

execute unless data storage lp:presummon_dict map_blocks[0][0] run data modify storage lp:presummon_dict map_blocks set value []
execute unless data storage lp:presummon_dict map_blocks[0][0] run data modify storage lp:temp y set value 147
execute unless data storage lp:presummon_dict map_blocks[0][0] run function lp:game/prepare/scan_map_col with storage lp:temp

execute unless data storage lp:presummon_dict map_blocks[0][0] run return run function lp:game/error/map_blocks_get
execute store result score mapc lp.temp run data get storage lp:presummon_dict map_blocks
scoreboard players add init lp.temp 1
