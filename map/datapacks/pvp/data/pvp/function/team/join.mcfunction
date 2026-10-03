# 加入A队
execute as @a[x=0] at @s if entity @s[team=!a] if block ~ ~-1 ~ minecraft:blue_terracotta run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0
execute as @a[x=0] at @s if entity @s[team=!a] if block ~ ~-1 ~ minecraft:blue_terracotta run tellraw @s {"text":"你已加入队伍 A","color":"blue"}
execute as @a[x=0] at @s if entity @s[team=!a] if block ~ ~-1 ~ minecraft:blue_terracotta run team join a @s

# 加入B队
execute as @a[x=0] at @s if entity @s[team=!b] if block ~ ~-1 ~ minecraft:red_terracotta run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0
execute as @a[x=0] at @s if entity @s[team=!b] if block ~ ~-1 ~ minecraft:red_terracotta run tellraw @s {"text":"你已加入队伍 B","color":"red"}
execute as @a[x=0] at @s if entity @s[team=!b] if block ~ ~-1 ~ minecraft:red_terracotta run team join b @s