execute unless entity @e[tag=motion.itd,limit=1] run execute in minecraft:overworld run summon minecraft:item_display .0 .0 .0 {Tags:["motion.itd"],view_range:0}



item replace entity @e[tag=motion.itd,limit=1] container.0 with minecraft:diamond_horse_armor[minecraft:custom_data={motion:true},minecraft:item_model="minecraft:air",minecraft:equippable={slot:"body",equip_sound:{range:1.0f,sound_id:""}}]

tag @s add motion



$scoreboard players set @s motion.data.x_pos $(x)
$scoreboard players set @s motion.data.y_pos $(y)
$scoreboard players set @s motion.data.z_pos $(z)

execute store result entity @e[tag=motion.itd,limit=1] data.x_pos double 0.0001 run scoreboard players get @s[scores={motion.data.x_pos=-10000..10000}] motion.data.x_pos
execute store result entity @e[tag=motion.itd,limit=1] data.y_pos double 0.0001 run scoreboard players get @s[scores={motion.data.y_pos=-10000..10000}] motion.data.y_pos
execute store result entity @e[tag=motion.itd,limit=1] data.z_pos double 0.0001 run scoreboard players get @s[scores={motion.data.z_pos=-10000..10000}] motion.data.z_pos



execute rotated ~ ~ as @e[tag=motion.itd,limit=1] run function motion:calculate/direction with entity @s data



execute at @s run rotate @s[x_rotation=-90] ~ -89.99

function motion:trigger

execute at @s run rotate @s[x_rotation=-90] ~ -90

tag @s remove motion