# 随机掉物定时器
scoreboard players add drop_timer lp.game 1
scoreboard players operation drop_iv lp.temp = random_interval lp.game
scoreboard players set b lp.temp 2
scoreboard players operation drop_iv lp.temp /= b lp.temp
execute if score item_boost lp.game matches 0 run scoreboard players operation drop_iv lp.temp = random_interval lp.game
scoreboard players operation drop_timer lp.game %= drop_iv lp.temp
execute if score drop_timer lp.game matches 0 run execute as @a[x=0,gamemode=survival] at @s run function lp:game/ongoing/macro/give_random_item with storage lp:game
