execute if score mapp lp.temp matches -1 run return 0
kill @e[x=0,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:interaction,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:mannequin]
execute at @s run tp @s ~ ~1 ~
scoreboard players set ga lp.temp 0
function lp:game/prepare/build_circle with storage lp:temp
execute store result storage lp:temp mapp int 1 run scoreboard players get mapp lp.temp
function lp:game/prepare/replace_barriers with storage lp:temp
scoreboard players remove mapp lp.temp 1
function lp:game/prepare/build_map_ground