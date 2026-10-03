execute if score total_rows lp.temp matches ..0 run scoreboard players set total_rows lp.temp 1
scoreboard players operation bpct lp.temp = rows_done lp.temp
scoreboard players set b lp.temp 100
scoreboard players operation bpct lp.temp *= b lp.temp
scoreboard players operation bpct lp.temp /= total_rows lp.temp
execute store result storage lp:temp bval int 1 run scoreboard players get rows_done lp.temp
execute store result storage lp:temp bpct int 1 run scoreboard players get bpct lp.temp
function lp:game/prepare/macro/build_bossbar with storage lp:temp
