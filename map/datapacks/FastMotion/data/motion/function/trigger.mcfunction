item replace entity @s armor.body from entity @e[tag=motion.itd,limit=1] container.0



##================================



scoreboard players set @s motion.gamemode 0
scoreboard players set @s[gamemode=adventure] motion.gamemode 2
scoreboard players set @s[gamemode=creative] motion.gamemode 1
scoreboard players set @s[gamemode=spectator] motion.gamemode 3

execute store result score send_command_feedback motion.gamerule run gamerule send_command_feedback

gamerule send_command_feedback false

gamemode spectator @s

gamemode survival @s
gamemode adventure @s[scores={motion.gamemode=2}]
gamemode creative @s[scores={motion.gamemode=1}]
gamemode spectator @s[scores={motion.gamemode=3}]

execute if score send_command_feedback motion.gamerule matches 1 run gamerule send_command_feedback true



execute as @e[x=0,type=minecraft:item] if data entity @s Item.components.minecraft:custom_data.motion run kill @s



clear @a[x=0] *[minecraft:custom_data~{motion:true}]



##================================



#tellraw @a[x=0] ["\n",{selector:"@a[tag=motion,limit=1]"},"  ",{nbt:"Motion",entity:"@a[tag=motion,limit=1]"}]