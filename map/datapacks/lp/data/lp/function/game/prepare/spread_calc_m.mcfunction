scoreboard players add spread_m lp.temp 1
scoreboard players operation a lp.temp = spread_m lp.temp
scoreboard players operation a lp.temp *= spread_m lp.temp
scoreboard players set b lp.temp 4
scoreboard players operation a lp.temp *= b lp.temp
scoreboard players remove a lp.temp 1
scoreboard players set b lp.temp 355
scoreboard players operation a lp.temp *= b lp.temp
scoreboard players operation d lp.temp = spread_n lp.temp
scoreboard players set b lp.temp 452
scoreboard players operation d lp.temp *= b lp.temp
execute if score a lp.temp <= d lp.temp run function lp:game/prepare/spread_calc_m
