# 这行放完了，推进 z，该换层就换层
scoreboard players remove iz lp.temp 1
scoreboard players add rows_done lp.temp 1
scoreboard players set row_active lp.temp 0

execute store result score a lp.temp run data get storage lp:temp mapsz
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp *= b lp.temp
execute if score iz lp.temp < a lp.temp run function lp:game/prepare/build_layer_next
