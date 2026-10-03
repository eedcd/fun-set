# 逐个扫地图，每张是 z=0 从 y=147 往下的容器列
# 开局由 init_stage_settings 调，mapx 从 -462 起，结果进 presummon_dict.maps
# maps[i] 对应 x=-462-i，每项是逐层的方块
$execute in minecraft:overworld if block $(mapx) 147 0 #minecraft:air run return 0

# 扫当前地图的一条列
data modify storage lp:presummon_dict map_blocks set value []
data modify storage lp:temp y set value 147
function lp:game/prepare/scan_map_layers with storage lp:temp

# 去掉数量和槽位，建造只要 id/组件
data remove storage lp:presummon_dict map_blocks[][].count
data remove storage lp:presummon_dict map_blocks[][].Slot

# 并入 maps 列表
data modify storage lp:presummon_dict maps append from storage lp:presummon_dict map_blocks
scoreboard players add map_count lp.temp 1

# 下一个 x
$scoreboard players set a lp.temp $(mapx)
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp mapx int 1 run scoreboard players get a lp.temp
function lp:game/prepare/scan_maps with storage lp:temp
