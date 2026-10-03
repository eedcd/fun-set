# 统计总人数与准备台上人数
scoreboard players set total_players pvp.statistics 0
execute as @a[x=0] run scoreboard players add total_players pvp.statistics 1

scoreboard players set ready_players pvp.statistics 0
execute as @a[x=0] at @s if block ~ ~-1 ~ minecraft:lime_terracotta run scoreboard players add ready_players pvp.statistics 1

# 人数不足两人或有人未站上准备台时不开始
execute unless score total_players pvp.statistics matches 0..1 if score total_players pvp.statistics = ready_players pvp.statistics run function pvp:game/start