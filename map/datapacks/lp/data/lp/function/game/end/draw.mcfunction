# 全员同时死亡 -> 平局，直接重置
title @a[x=0] title {"text":"平局","color":"gray","bold":true}
execute as @a[x=0] at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
function lp:game/end/reset_players
