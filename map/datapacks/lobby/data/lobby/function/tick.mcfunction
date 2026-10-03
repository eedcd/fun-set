execute as @e[type=minecraft:mannequin,x=0] at @s run rotate @s facing entity @p[gamemode=adventure,distance=..10]

execute as @e[type=minecraft:interaction,tag=lobby.lp,x=0,limit=1] at @s on target run function lobby:join/lucky_pillar
execute as @e[type=minecraft:interaction,tag=lobby.lp,x=0,limit=1] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=lobby.pvp,x=0,limit=1] at @s on target run function lobby:join/pvp
execute as @e[type=minecraft:interaction,tag=lobby.pvp,x=0,limit=1] run data remove entity @s interaction

execute as @e[type=minecraft:mannequin,tag=lobby.about,x=0] at @s if entity @a[distance=..10] run data modify entity @s CustomNameVisible set value 1b
execute as @e[type=minecraft:mannequin,tag=lobby.about,x=0] at @s unless entity @a[distance=..10] run data modify entity @s CustomNameVisible set value 0b

execute as @a[x=-17,y=-64,z=-71,dx=107,dy=384,dz=142] at @s run execute if block ~ ~ ~ minecraft:nether_portal run scoreboard players add @s lobby.nether_portal_time 1
execute as @a[x=-17,y=-64,z=-71,dx=107,dy=384,dz=142] at @s run execute unless block ~ ~ ~ minecraft:nether_portal run scoreboard players reset @s lobby.nether_portal_time
execute as @a[x=-13,y=92,z=-1,dx=1,dy=1,dz=1,scores={lobby.nether_portal_time=40}] run function lobby:join
execute as @a[x=-8,y=106,z=-4,dx=1,dy=10,dz=10,scores={lobby.nether_portal_time=40}] run function lobby:join/about

# 彩蛋
execute as @a[x=-17,y=-64,z=-71,dx=107,dy=384,dz=142,gamemode=adventure] at @s run function lobby:advancement/self_tick
execute as @e[type=minecraft:interaction,tag=lobby.about.it,x=0,limit=1] on attacker at @s run function lobby:advancement/wruding
execute as @e[type=minecraft:interaction,tag=lobby.about.it,x=0,limit=1] run data remove entity @s attack