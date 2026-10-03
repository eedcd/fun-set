# 全部地图都已尝试过
execute if score mnn lp.temp > mn lp.temp run return -2

# 随机地图编号 r
$execute store result storage lp:temp r int 1 run random value 0..$(mn)

# 计算实际坐标 c = -462 - r
execute store result score a lp.temp run data get storage lp:temp r
scoreboard players set b lp.temp -462
scoreboard players operation b lp.temp -= a lp.temp
execute store result storage lp:temp c int 1 run scoreboard players get b lp.temp

return run function lp:game/prepare/random_check_map with storage lp:temp