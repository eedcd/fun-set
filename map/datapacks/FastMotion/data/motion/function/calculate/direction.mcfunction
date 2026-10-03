execute rotated as @a[tag=motion,limit=1] run rotate @s ~ ~
execute store result score @s motion.ry0 run data get entity @s Rotation.[0] 1000000

rotate @s ~ ~
execute store result score @s motion.ry1 run data get entity @s Rotation.[0] 1000000

scoreboard players operation @s motion.ry1 -= @s motion.ry0

execute store result entity @s Rotation.[0] float 0.000001 run scoreboard players get @s motion.ry1
execute store result entity @s Rotation.[0] float -0.001 run data get entity @s Rotation.[0] -1000



##================================



$execute in minecraft:overworld rotated as @s positioned .0 .0 .0 run tp @s ^$(x_pos) ^$(y_pos) ^$(z_pos)



execute store result entity @s data.x_pos double 0.000001 run data get entity @s Pos.[0] 1000000
execute store result entity @s data.y_pos double 0.000001 run data get entity @s Pos.[1] 1000000
execute store result entity @s data.z_pos double 0.000001 run data get entity @s Pos.[2] 1000000
execute store result entity @s data.x_rotation float 0.000001 run data get entity @a[tag=motion,limit=1] Rotation.[1] -1000000



function motion:calculate/x_rotation with entity @s data
function motion:calculate/refine