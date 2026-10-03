execute unless entity @e[tag=motion.itd,limit=1] run execute in minecraft:overworld run summon minecraft:item_display .0 .0 .0 {Tags:["motion.itd"],view_range:0}



item replace entity @e[tag=motion.itd,limit=1] container.0 with minecraft:diamond_horse_armor[minecraft:custom_data={motion:true},minecraft:item_model="minecraft:air",minecraft:equippable={slot:"body",equip_sound:{range:1.0f,sound_id:""}}]

execute at @s run rotate @s[x_rotation=-90] ~ -89.99

tag @s add motion



execute store result entity @e[tag=motion.itd,limit=1] data.x_pos double 0.0001 run scoreboard players get @s[scores={motion.x=-10000..10000}] motion.x
execute store result entity @e[tag=motion.itd,limit=1] data.y_pos double 0.0001 run scoreboard players get @s[scores={motion.y=-10000..10000}] motion.y
execute store result entity @e[tag=motion.itd,limit=1] data.z_pos double 0.0001 run scoreboard players get @s[scores={motion.z=-10000..10000}] motion.z



execute rotated ~ ~ as @e[tag=motion.itd,limit=1] run function motion:calculate/direction with entity @s data



execute at @s run rotate @s[x_rotation=-90] ~ -89.99

function motion:trigger

execute at @s run rotate @s[x_rotation=-90] ~ -90

tag @s remove motion