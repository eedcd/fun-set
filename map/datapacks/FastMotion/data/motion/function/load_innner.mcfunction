tag @a remove load
tag @a remove motion

forceload add 0 0 -1 -1

kill @e[tag=motion.itd]

summon minecraft:item_display .0 .0 .0 {Tags:["motion.itd"],view_range:0}



scoreboard objectives add motion.1000 dummy
scoreboard objectives add motion.-1000 dummy
scoreboard objectives add motion.gamemode dummy
scoreboard objectives add motion.gamerule dummy
scoreboard objectives add motion.ry0 dummy
scoreboard objectives add motion.ry1 dummy
scoreboard objectives add motion.x dummy
scoreboard objectives add motion.y dummy
scoreboard objectives add motion.z dummy
scoreboard objectives add motion.x_pos dummy
scoreboard objectives add motion.y_pos dummy
scoreboard objectives add motion.z_pos dummy
scoreboard objectives add motion.data.x_pos dummy
scoreboard objectives add motion.data.y_pos dummy
scoreboard objectives add motion.data.z_pos dummy

scoreboard players set num motion.1000 1000
scoreboard players set num motion.-1000 -1000