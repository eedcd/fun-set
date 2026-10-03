execute unless score clearing lp.temp matches 1 run return 0

kill @e[x=0,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:interaction,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:mannequin]

execute unless score nodes_per_tick lp.temp matches 1.. run scoreboard players set nodes_per_tick lp.temp 16
scoreboard players operation node_budget lp.temp = nodes_per_tick lp.temp
function lp:game/prepare/cleanup_node_loop

# 进度条刷新
execute if score clr_total lp.temp matches ..0 run scoreboard players set clr_total lp.temp 1
scoreboard players operation bpct lp.temp = clr_done lp.temp
scoreboard players set b lp.temp 100
scoreboard players operation bpct lp.temp *= b lp.temp
scoreboard players operation bpct lp.temp /= clr_total lp.temp
execute store result storage lp:temp bval int 1 run scoreboard players get clr_done lp.temp
execute store result storage lp:temp bpct int 1 run scoreboard players get bpct lp.temp
function lp:game/prepare/macro/cleanup_bossbar with storage lp:temp

# 清理完成
execute if score clr_total lp.temp matches 1.. if score clr_done lp.temp >= clr_total lp.temp run function lp:game/prepare/cleanup_done
execute unless score clearing lp.temp matches 1 run return 0
execute unless data storage lp:temp bqueue[0] run function lp:game/prepare/cleanup_done
execute unless score clearing lp.temp matches 1 run return 0

# 看门狗
execute if score clr_done lp.temp = clr_watch_done lp.temp run scoreboard players add clr_watch lp.temp 1
execute unless score clr_done lp.temp = clr_watch_done lp.temp run scoreboard players set clr_watch lp.temp 0
scoreboard players operation clr_watch_done lp.temp = clr_done lp.temp
execute if score clearing lp.temp matches 1 if score clr_watch lp.temp matches 100.. run function lp:game/prepare/cleanup_done
