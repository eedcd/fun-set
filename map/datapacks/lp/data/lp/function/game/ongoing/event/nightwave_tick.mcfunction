# 黑夜浪潮，保持黑夜，20tick 刷一批
scoreboard players remove nightwave_timer lp.game 1
time set night
scoreboard players operation nw_mod lp.temp = nightwave_timer lp.game
scoreboard players operation nw_mod lp.temp %= 20 lp.temp

# 20tick 刷4只
execute if score nightwave_timer lp.game matches 1.. if score nw_mod lp.temp matches 0 run scoreboard players set wave_n lp.temp 4
execute if score nightwave_timer lp.game matches 1.. if score nw_mod lp.temp matches 0 run function lp:game/ongoing/event/mob_spawn
execute if score nightwave_timer lp.game matches 1.. if score nw_mod lp.temp matches 0 run effect give @e[x=0,type=minecraft:zombie,tag=lp.wave_mob] minecraft:resistance 3 254 true
execute if score nightwave_timer lp.game matches 1.. if score nw_mod lp.temp matches 0 run effect give @e[x=0,type=minecraft:skeleton,tag=lp.wave_mob] minecraft:resistance 3 254 true
execute if score nightwave_timer lp.game matches 1.. if score nw_mod lp.temp matches 0 run effect give @e[x=0,type=minecraft:spider,tag=lp.wave_mob] minecraft:resistance 3 254 true
execute if score nightwave_timer lp.game matches 1.. if score nw_mod lp.temp matches 0 run tag @e[x=0,tag=lp.wave_mob] remove lp.wave_mob

# 结束，回正午
execute if score nightwave_timer lp.game matches ..0 run time set noon
execute if score nightwave_timer lp.game matches ..0 run scoreboard players set nightwave_timer lp.game 0
execute if score nightwave_timer lp.game matches ..0 run kill @e[x=0,type=minecraft:armor_stand,tag=lp.mob_marker]
