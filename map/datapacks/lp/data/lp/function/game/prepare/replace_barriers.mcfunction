# 当前层的 barrier 逐个随机换成 map_blocks[mapp] 里的方块
execute store result score cx lp.temp run data get entity @s Pos[0]
execute store result score cy lp.temp run data get entity @s Pos[1]
execute store result score cz lp.temp run data get entity @s Pos[2]
execute store result storage lp:temp cx int 1 run scoreboard players get cx lp.temp
execute store result storage lp:temp cy int 1 run scoreboard players get cy lp.temp
execute store result storage lp:temp cz int 1 run scoreboard players get cz lp.temp
execute store result storage lp:temp mapp int 1 run scoreboard players get mapp lp.temp
execute store result storage lp:temp iz int 1 run data get storage lp:temp mapsz
$execute store result score a lp.temp run data get storage lp:presummon_dict map_blocks[$(mapp)]
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp rmax int 1 run scoreboard players get a lp.temp

function lp:game/prepare/macro/replace_row with storage lp:temp
