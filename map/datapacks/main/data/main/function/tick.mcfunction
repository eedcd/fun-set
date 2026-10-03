execute if entity @a[nbt={Dimension:"minecraft:overworld"}] in minecraft:overworld run function lobby:tick

execute in minecraft:overworld if entity @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] run function lp:lobby/tick

execute in lp:game run function lp:game_tick

execute if entity @a[nbt={Dimension:"pvp:game"}] in pvp:game run function pvp:tick

execute as @a[scores={main.leave=1..}] run function main:enter