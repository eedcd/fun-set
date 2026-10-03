execute if block -13 2 2 minecraft:lever[powered=true] run scoreboard players set team_fight pvp.settings 0
execute if block -13 2 2 minecraft:lever[powered=false] run scoreboard players set team_fight pvp.settings 1

execute if block -12 2 7 minecraft:lever[powered=false] run scoreboard players set friendly_fire pvp.settings 1
execute if block -12 2 7 minecraft:lever[powered=true] run scoreboard players set friendly_fire pvp.settings 0

execute if block -9 2 7 minecraft:lever[powered=false] run scoreboard players set mvp_settlement pvp.settings 0
execute if block -9 2 7 minecraft:lever[powered=true] run scoreboard players set mvp_settlement pvp.settings 1

execute if block -6 2 7 minecraft:lever[powered=false] run scoreboard players set addition_bt pvp.settings 0
execute if block -6 2 7 minecraft:lever[powered=true] run scoreboard players set addition_bt pvp.settings 1

execute if block -3 2 7 minecraft:lever[powered=false] run scoreboard players set vd_mode pvp.settings 0
execute if block -3 2 7 minecraft:lever[powered=true] run scoreboard players set vd_mode pvp.settings 1

execute if block 0 2 7 minecraft:lever[powered=false] run scoreboard players set pick_item pvp.settings 0
execute if block 0 2 7 minecraft:lever[powered=true] run scoreboard players set pick_item pvp.settings 1