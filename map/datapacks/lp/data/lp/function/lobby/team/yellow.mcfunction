playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute unless entity @s[tag=main.spectator] run team join lp.yellow @s

execute unless entity @s[tag=main.spectator] run tellraw @s {"text":"已加入黄队","color":"yellow"}