# 按序号反查所在环，递归算，末环补余数
scoreboard players add spread_j lp.temp 1
scoreboard players operation spread_k lp.temp = spread_n lp.temp
scoreboard players operation spread_k lp.temp *= spread_j lp.temp
scoreboard players operation spread_k lp.temp /= spread_s lp.temp
execute if score spread_j lp.temp = spread_m lp.temp run scoreboard players operation spread_k lp.temp = spread_n lp.temp
execute if score spread_j lp.temp = spread_m lp.temp run scoreboard players operation spread_k lp.temp -= spread_cum lp.temp
# 累加前的 spread_cum 就是本环起始序号
scoreboard players operation spread_slot lp.temp = @s lp.temp
scoreboard players operation spread_slot lp.temp -= spread_cum lp.temp
scoreboard players operation spread_cum lp.temp += spread_k lp.temp
# 命中了，记环号
execute if score @s lp.temp < spread_cum lp.temp run scoreboard players operation spread_ring lp.temp = spread_j lp.temp
execute if score @s lp.temp < spread_cum lp.temp run return 0
execute if score spread_j lp.temp < spread_m lp.temp run function lp:game/prepare/spread_find_ring
