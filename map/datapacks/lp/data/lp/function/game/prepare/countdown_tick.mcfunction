scoreboard players remove cd lp.temp 1
execute if score cd lp.temp matches 40 run title @a[x=0] title {"text":"2","color":"gold","bold":true}
execute if score cd lp.temp matches 40 run execute as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute if score cd lp.temp matches 20 run title @a[x=0] title {"text":"1","color":"red","bold":true}
execute if score cd lp.temp matches 20 run execute as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute if score cd lp.temp matches ..0 run function lp:game/prepare/remove_protect
