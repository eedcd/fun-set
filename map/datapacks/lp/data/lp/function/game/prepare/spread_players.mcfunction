tp @a[x=0,gamemode=spectator] 0 105 0

summon minecraft:armor_stand 0 100 0 {Tags:["lp.spreader"],NoGravity:1b,Silent:1b}

scoreboard players set spread_n lp.temp 0
execute store result score spread_n lp.temp run execute if entity @a[x=0,team=!main.spectator]

scoreboard players set spread_m lp.temp 0
function lp:game/prepare/spread_calc_m
scoreboard players remove spread_m lp.temp 1
execute if score spread_m lp.temp matches ..0 run scoreboard players set spread_m lp.temp 1

# S = 1+2+...+m
scoreboard players operation spread_s lp.temp = spread_m lp.temp
scoreboard players add spread_s lp.temp 1
scoreboard players operation spread_s lp.temp *= spread_m lp.temp
scoreboard players set b lp.temp 2
scoreboard players operation spread_s lp.temp /= b lp.temp

execute if score spread_n lp.temp matches 2.. run scoreboard players set spread_idx lp.temp 0
execute if score spread_n lp.temp matches 2.. run execute as @a[x=0,team=!main.spectator] run function lp:game/prepare/spread_assign_index
execute if score spread_n lp.temp matches 2.. run execute as @a[x=0,team=!main.spectator] run function lp:game/prepare/spread_place
execute if score spread_n lp.temp matches 0..1 run tp @a[x=0,team=!main.spectator] 0.5 100 0.5

function lp:game/prepare/spread_finish
