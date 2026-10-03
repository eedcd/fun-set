execute store result score @s motion.x_pos run data get entity @s Pos.[0] 100000
execute store result score @s motion.y_pos run data get entity @s Pos.[1] 100000
execute store result score @s motion.z_pos run data get entity @s Pos.[2] 100000

execute store result entity @s[scores={motion.x_pos=0..}] item.components.minecraft:enchantments."motion:0/sprint.x" int 0.0001 run data get entity @s Pos.[0] 1000000
execute store result entity @s[scores={motion.x_pos=..-1}] item.components.minecraft:enchantments."motion:0/sprint.x-" int 0.0001 run data get entity @s Pos.[0] -1000000
execute store result entity @s[scores={motion.y_pos=0..}] item.components.minecraft:enchantments."motion:0/sprint.y" int 0.0001 run data get entity @s Pos.[1] 1000000
execute store result entity @s[scores={motion.y_pos=..-1}] item.components.minecraft:enchantments."motion:0/sprint.y-" int 0.0001 run data get entity @s Pos.[1] -1000000
execute store result entity @s[scores={motion.z_pos=0..}] item.components.minecraft:enchantments."motion:0/sprint.z" int 0.0001 run data get entity @s Pos.[2] 1000000
execute store result entity @s[scores={motion.z_pos=..-1}] item.components.minecraft:enchantments."motion:0/sprint.z-" int 0.0001 run data get entity @s Pos.[2] -1000000

scoreboard players operation @s[scores={motion.x_pos=0..}] motion.x_pos %= num motion.1000
scoreboard players operation @s[scores={motion.x_pos=..-1}] motion.x_pos %= num motion.-1000
scoreboard players operation @s[scores={motion.y_pos=0..}] motion.y_pos %= num motion.1000
scoreboard players operation @s[scores={motion.y_pos=..-1}] motion.y_pos %= num motion.-1000
scoreboard players operation @s[scores={motion.z_pos=0..}] motion.z_pos %= num motion.1000
scoreboard players operation @s[scores={motion.z_pos=..-1}] motion.z_pos %= num motion.-1000

execute store result entity @s[scores={motion.x_pos=0..}] item.components.minecraft:enchantments."motion:1/sprint.x" int .1 run scoreboard players get @s motion.x_pos
execute store result entity @s[scores={motion.x_pos=..-1}] item.components.minecraft:enchantments."motion:1/sprint.x-" int -.1 run scoreboard players get @s motion.x_pos
execute store result entity @s[scores={motion.y_pos=0..}] item.components.minecraft:enchantments."motion:1/sprint.y" int .1 run scoreboard players get @s motion.y_pos
execute store result entity @s[scores={motion.y_pos=..-1}] item.components.minecraft:enchantments."motion:1/sprint.y-" int -.1 run scoreboard players get @s motion.y_pos
execute store result entity @s[scores={motion.z_pos=0..}] item.components.minecraft:enchantments."motion:1/sprint.z" int .1 run scoreboard players get @s motion.z_pos
execute store result entity @s[scores={motion.z_pos=..-1}] item.components.minecraft:enchantments."motion:1/sprint.z-" int -.1 run scoreboard players get @s motion.z_pos