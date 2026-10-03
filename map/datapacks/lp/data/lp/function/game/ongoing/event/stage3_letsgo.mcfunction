execute as @a[x=0,gamemode=survival] run attribute @s minecraft:max_health modifier add lp:event_letsgo 80 add_value
effect give @a[x=0,gamemode=survival] minecraft:regeneration 30 0 true
effect give @a[x=0,gamemode=survival] minecraft:strength 30 4 true
scoreboard players set letsgo_timer lp.game 600
