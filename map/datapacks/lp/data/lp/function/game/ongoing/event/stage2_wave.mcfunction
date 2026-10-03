# 1分钟黑夜刷怪，结束回正午
time set night
scoreboard players set nightwave_timer lp.game 1200
kill @e[x=0,type=minecraft:armor_stand,tag=lp.mob_marker]
scoreboard players set wave_n lp.temp 10
function lp:game/ongoing/event/mob_spawn

effect give @e[x=0,type=minecraft:zombie,tag=lp.wave_mob] minecraft:resistance 3 254 true
effect give @e[x=0,type=minecraft:skeleton,tag=lp.wave_mob] minecraft:resistance 3 254 true
effect give @e[x=0,type=minecraft:spider,tag=lp.wave_mob] minecraft:resistance 3 254 true
tag @e[x=0,tag=lp.wave_mob] remove lp.wave_mob
