# 从 map_blocks[mapp] 随机一项放置
$execute store result score r lp.temp run random value 0..$(rmax)
execute store result storage lp:temp r int 1 run scoreboard players get r lp.temp

function lp:game/prepare/macro/pick_block_apply with storage lp:temp
