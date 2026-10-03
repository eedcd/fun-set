$scoreboard players set a lp.temp $(cx)
$scoreboard players set b lp.temp $(ix)
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp ax int 1 run scoreboard players get a lp.temp
$scoreboard players set a lp.temp $(cz)
$scoreboard players set b lp.temp $(iz)
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp az int 1 run scoreboard players get a lp.temp

function lp:game/prepare/macro/replace_cell_place with storage lp:temp
$scoreboard players set a lp.temp $(ix)
scoreboard players set b lp.temp -1
scoreboard players operation a lp.temp += b lp.temp
execute store result storage lp:temp ix int 1 run scoreboard players get a lp.temp

# 扣预算，不够了就留着 ix 下 tick 接着放
scoreboard players remove blk_budget lp.temp 1

$scoreboard players set a lp.temp $(ix)
$scoreboard players set b lp.temp -$(mapsz)
execute if score a lp.temp >= b lp.temp if score blk_budget lp.temp matches 1.. run function lp:game/prepare/macro/replace_cell with storage lp:temp