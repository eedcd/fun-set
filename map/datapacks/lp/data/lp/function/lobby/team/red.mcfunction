playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute unless entity @s[tag=main.spectator] run team join lp.red @s
execute unless entity @s[tag=main.spectator] run tellraw @s {"text":"已加入红队","color":"red"}