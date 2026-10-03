$execute as @e[x=0,type=minecraft:armor_stand,tag=lp.event_marker,limit=1] at @s rotated $(r2) 0 run tp @s ^ ^ ^$(r)
$execute as @e[x=0,type=minecraft:armor_stand,tag=lp.event_marker,limit=1] at @s run summon minecraft:$(group_mob) ~ ~ ~ {Tags:["lp.event_mob"]}
kill @e[x=0,type=minecraft:armor_stand,tag=lp.event_marker]
