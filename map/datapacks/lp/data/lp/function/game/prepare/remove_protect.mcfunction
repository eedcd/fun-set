scoreboard players set status lp.game 3
execute as @a[x=0] run attribute @s minecraft:max_health modifier remove lp:event_letsgo
execute as @a[x=0] run attribute @s minecraft:attack_damage base set 1
effect clear @a[x=0]
title @a[x=0] title {"text":"GO!","color":"green","bold":true}
execute as @a[x=0,team=!main.spectator] at @s run function lp:game/prepare/remove_protect_blocks
function lp:game/ongoing/event/init