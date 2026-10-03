# 先求所在环和环内序号，再算角度半径传送
scoreboard players set spread_j lp.temp 0
scoreboard players set spread_cum lp.temp 0
scoreboard players set spread_ring lp.temp 0
scoreboard players set spread_k lp.temp 0
function lp:game/prepare/spread_find_ring

# 角度 = 360·slot/k_j
scoreboard players operation spread_ang lp.temp = spread_slot lp.temp
scoreboard players set b lp.temp 360
scoreboard players operation spread_ang lp.temp *= b lp.temp
scoreboard players operation spread_ang lp.temp /= spread_k lp.temp

# 偶数环偏移 180/k_j，免得跟邻环对齐
scoreboard players operation b lp.temp = spread_ring lp.temp
scoreboard players set c lp.temp 2
scoreboard players operation b lp.temp %= c lp.temp
execute if score b lp.temp matches 0 run scoreboard players set c lp.temp 180
execute if score b lp.temp matches 0 run scoreboard players operation c lp.temp /= spread_k lp.temp
execute if score b lp.temp matches 0 run scoreboard players operation spread_ang lp.temp += c lp.temp

# 半径 = mapsz·ring/m
scoreboard players operation spread_rad lp.temp = mapsz lp.temp
scoreboard players operation spread_rad lp.temp *= spread_ring lp.temp
scoreboard players operation spread_rad lp.temp /= spread_m lp.temp

execute store result storage lp:temp angle int 1 run scoreboard players get spread_ang lp.temp
execute store result storage lp:temp radius int 1 run scoreboard players get spread_rad lp.temp
function lp:game/prepare/macro/spread_tp with storage lp:temp
execute at @s align xz run tp @s ~0.5 ~ ~0.5
