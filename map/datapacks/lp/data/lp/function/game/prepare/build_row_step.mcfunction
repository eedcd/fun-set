# 放置一行
# row_active=1 这行还没放完
execute unless score row_active lp.temp matches 1 run execute store result storage lp:temp ix int 1 run data get storage lp:temp mapsz
scoreboard players set row_active lp.temp 1

execute store result storage lp:temp iz int 1 run scoreboard players get iz lp.temp

function lp:game/prepare/macro/replace_cell with storage lp:temp

# ix 越过 -mapsz 就是这行放完了
execute store result score a lp.temp run data get storage lp:temp ix
execute store result score b lp.temp run data get storage lp:temp mapsz
scoreboard players operation a lp.temp += b lp.temp
execute if score a lp.temp matches ..-1 run function lp:game/prepare/build_row_done

# 预算够就接着放下一行
execute if score row_active lp.temp matches 0 if score blk_budget lp.temp matches 1.. run execute if score phase lp.temp matches 1 run execute unless score mapp lp.temp matches -1 run function lp:game/prepare/build_row_step
