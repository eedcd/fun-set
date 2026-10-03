$scoreboard players set a lp.temp $(mapsz)
execute store result storage lp:temp ix int 1 run scoreboard players get a lp.temp

function lp:game/prepare/macro/replace_cell with storage lp:temp

$scoreboard players set a lp.temp $(iz)
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp iz int 1 run scoreboard players get a lp.temp

$scoreboard players set a lp.temp $(iz)
$scoreboard players set b lp.temp -$(mapsz)
execute if score a lp.temp >= b lp.temp run function lp:game/prepare/macro/replace_row with storage lp:temp
