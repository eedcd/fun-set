# 初始化当前层
kill @e[x=0,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:interaction,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:mannequin]
execute at @s run tp @s ~ ~1 ~

execute store result score cx lp.temp run data get entity @s Pos[0]
execute store result score cy lp.temp run data get entity @s Pos[1]
execute store result score cz lp.temp run data get entity @s Pos[2]
execute store result storage lp:temp cx int 1 run scoreboard players get cx lp.temp
execute store result storage lp:temp cy int 1 run scoreboard players get cy lp.temp
execute store result storage lp:temp cz int 1 run scoreboard players get cz lp.temp

$execute store result score a lp.temp run data get storage lp:presummon_dict map_blocks[$(mapp)]
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp rmax int 1 run scoreboard players get a lp.temp

scoreboard players set ga lp.temp 0
function lp:game/prepare/build_circle with storage lp:temp

execute store result score iz lp.temp run data get storage lp:temp mapsz
# 新的一层，行状态重置，ix 从 mapsz 开始
scoreboard players set row_active lp.temp 0
scoreboard players set phase lp.temp 1
