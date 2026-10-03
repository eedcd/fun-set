# 该编号已尝试过则重新抽
$execute if score $(r) lp.map_tried matches 1 run return run function lp:game/prepare/random_loop_pick_map with storage lp:temp

# 记录已尝试并计数
$scoreboard players set $(r) lp.map_tried 1
scoreboard players add mnn lp.temp 1

# 无地图箱子则重新抽
$execute in minecraft:overworld if block $(c) 147 0 #minecraft:air run return run function lp:game/prepare/random_loop_pick_map with storage lp:temp

# 第一格为结构空位 = 禁用地图，重新抽
$execute in minecraft:overworld if data block $(c) 147 0 Items[{Slot:0b,id:"minecraft:structure_void"}] run return run function lp:game/prepare/random_loop_pick_map with storage lp:temp

# 可用返回
$scoreboard players set mapx lp.temp $(c)
$scoreboard players set map_i lp.temp $(r)
return 0
