# 给每人分配环形序号 0..N-1
scoreboard players operation @s lp.temp = spread_idx lp.temp
scoreboard players add spread_idx lp.temp 1
