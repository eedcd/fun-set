advancement revoke @s only lp:ltrk

playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute unless entity @s[tag=main.spectator] run team join lp.none @s
execute unless entity @s[tag=main.spectator] run tellraw @s {"text":"已退出所有队伍","color":"dark_gray"}