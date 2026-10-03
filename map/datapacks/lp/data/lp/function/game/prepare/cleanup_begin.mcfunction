execute store result score max_r lp.temp run data get storage lp:game max_r
execute store result score max_d lp.temp run data get storage lp:game max_d

scoreboard players operation r lp.temp = mapsz lp.temp
execute if score r lp.temp matches 0 run scoreboard players set r lp.temp 30
scoreboard players add r lp.temp 2
execute if score max_r lp.temp < r lp.temp run scoreboard players operation max_r lp.temp = r lp.temp

scoreboard players operation d lp.temp = mapc lp.temp
scoreboard players add d lp.temp 2
execute if score max_d lp.temp < d lp.temp run scoreboard players operation max_d lp.temp = d lp.temp

scoreboard players operation r lp.temp += clr_margin lp.temp

scoreboard players add r lp.temp 4
scoreboard players set b lp.temp 5
scoreboard players operation r lp.temp /= b lp.temp
scoreboard players operation r lp.temp *= b lp.temp

execute store result storage lp:game max_r int 1 run scoreboard players get r lp.temp
execute store result storage lp:game max_d int 1 run scoreboard players get d lp.temp

scoreboard players set clr_xmin lp.temp 0
scoreboard players operation clr_xmin lp.temp -= max_r lp.temp
scoreboard players set clr_xmax lp.temp 0
scoreboard players operation clr_xmax lp.temp += max_r lp.temp
scoreboard players set clr_zmin lp.temp 0
scoreboard players operation clr_zmin lp.temp -= max_r lp.temp
scoreboard players set clr_zmax lp.temp 0
scoreboard players operation clr_zmax lp.temp += max_r lp.temp

scoreboard players set clr_ymin lp.temp -64
scoreboard players set clr_ymax lp.temp 319

scoreboard players operation clr_total lp.temp = max_r lp.temp
scoreboard players set b lp.temp 2
scoreboard players operation clr_total lp.temp *= b lp.temp
scoreboard players set b lp.temp 5
scoreboard players operation clr_total lp.temp /= b lp.temp
scoreboard players add clr_total lp.temp 1
scoreboard players operation clr_total lp.temp *= clr_total lp.temp
execute store result storage lp:temp trows int 1 run scoreboard players get clr_total lp.temp
function lp:game/prepare/macro/build_bossbar_max with storage lp:temp
bossbar set lp:init color blue
bossbar set lp:init name ["",{"text":"清理场地 ","color":"aqua","bold":true},{"text":"| ","color":"dark_gray"},{"text":"0%","color":"white"}]

data modify storage lp:temp bvis set value []
data modify storage lp:temp bqueue set value []
data modify storage lp:temp bpush set value {x:0,z:0,ymin:64,ymax:319}
execute store result storage lp:temp bpush.ymin int 1 run scoreboard players get clr_ymin lp.temp
execute store result storage lp:temp bpush.ymax int 1 run scoreboard players get clr_ymax lp.temp
data modify storage lp:temp bpush.x set value 0
data modify storage lp:temp bpush.z set value 0
data modify storage lp:temp bqueue append from storage lp:temp bpush

execute if score nodes_per_tick lp.temp matches ..0 run scoreboard players set nodes_per_tick lp.temp 16
execute if score nodes_per_tick lp.temp matches 1001.. run scoreboard players set nodes_per_tick lp.temp 1000
scoreboard players set clr_done lp.temp 0

scoreboard players set clr_watch lp.temp 0
scoreboard players set clr_watch_done lp.temp -1

# 中心列做判空参照，先清空，后面节点都拿它对比
fill -2 -64 -2 2 319 2 minecraft:air

scoreboard players set clearing lp.temp 1

kill @e[x=0,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:interaction,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:mannequin]
