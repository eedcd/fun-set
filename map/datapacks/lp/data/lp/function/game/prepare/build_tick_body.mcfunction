execute store result storage lp:temp mapp int 1 run scoreboard players get mapp lp.temp

execute if score mapp lp.temp matches -1 run function lp:game/prepare/build_finish

execute unless score mapp lp.temp matches -1 run execute if score phase lp.temp matches 0 run function lp:game/prepare/build_layer_init with storage lp:temp

execute unless score mapp lp.temp matches -1 run execute if score phase lp.temp matches 1 run function lp:game/prepare/build_rows_budget

# 刷新放置进度条
execute if score building lp.temp matches 1 run function lp:game/prepare/build_bossbar_update
