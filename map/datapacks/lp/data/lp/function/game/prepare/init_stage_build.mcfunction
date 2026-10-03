# 初始化建造器，转入跨 tick 放置
bossbar set lp:init value 4
bossbar set lp:init name ["",{"text":"初始化 ","color":"aqua","bold":true},{"text":"| ","color":"dark_gray"},{"text":"准备放置地基 ","color":"white"},{"text":"(4/4)","color":"gray"}]

scoreboard players operation mapp lp.temp = mapc lp.temp
scoreboard players set b lp.temp 1
scoreboard players operation mapp lp.temp -= b lp.temp

scoreboard players set phase lp.temp 0
scoreboard players set bdy lp.temp 1
scoreboard players operation bdy lp.temp += mapc lp.temp
execute store result storage lp:temp bdy int 1 run scoreboard players get bdy lp.temp

scoreboard players operation total_rows lp.temp = mapc lp.temp
scoreboard players set b lp.temp 2
scoreboard players operation b lp.temp *= mapsz lp.temp
scoreboard players add b lp.temp 1
scoreboard players operation total_rows lp.temp *= b lp.temp
execute store result storage lp:temp trows int 1 run scoreboard players get total_rows lp.temp
function lp:game/prepare/macro/build_bossbar_max with storage lp:temp

scoreboard players set rows_done lp.temp 0
scoreboard players set building lp.temp 1
scoreboard players set init lp.temp 0
bossbar set lp:init color green

kill @e[x=0,type=minecraft:armor_stand,tag=lp.builder]
summon minecraft:armor_stand 0 64 0 {Tags:["lp.builder"],NoGravity:1b,Silent:1b}
execute as @e[x=0,type=minecraft:armor_stand,tag=lp.builder] at @s run function lp:game/prepare/macro/builder_tp_bottom with storage lp:temp
