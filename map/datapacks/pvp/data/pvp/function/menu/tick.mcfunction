execute as @e[x=0,type=minecraft:interaction,tag=menu_armor] on attacker run function pvp:menu/give/armor
execute as @e[x=0,type=minecraft:interaction,tag=menu_melee] on attacker run function pvp:menu/give/melee
execute as @e[x=0,type=minecraft:interaction,tag=menu_mace] on attacker run function pvp:menu/give/mace
execute as @e[x=0,type=minecraft:interaction,tag=menu_spear] on attacker run function pvp:menu/give/spear
execute as @e[x=0,type=minecraft:interaction,tag=menu_bow] on attacker run function pvp:menu/give/bow
execute as @e[x=0,type=minecraft:interaction,tag=menu_ender_pearl] on attacker run function pvp:menu/give/ender_pearl
execute as @e[x=0,type=minecraft:interaction,tag=menu_supply] on attacker run function pvp:menu/give/supply
execute as @e[x=0,type=minecraft:interaction,tag=menu_potions] on attacker run function pvp:menu/give/potions
# say 1
execute as @e[x=0,type=minecraft:interaction] run data remove entity @s attack