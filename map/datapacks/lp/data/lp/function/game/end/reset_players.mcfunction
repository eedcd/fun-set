# 游戏结束重置
# 世界边界恢复
worldborder set 29999984 0
worldborder center 0 0

time set noon
scoreboard players set status lp.game 0
tag @a[x=0] remove lp.winner
tag @a[x=0] remove lp.mvp

# 属性与效果重置
execute as @a[x=0] run attribute @s minecraft:max_health modifier remove lp:event_letsgo
execute as @a[x=0] run attribute @s minecraft:attack_damage base set 0
effect clear @a[x=0]
scoreboard players set letsgo_timer lp.game -1
scoreboard players set arrow_timer lp.game 0
scoreboard players set thunder_n lp.game 0
scoreboard players set item_boost lp.game 0
scoreboard players set boost_timer lp.game 0
scoreboard players set nightwave_timer lp.game 0
kill @e[x=0,type=minecraft:armor_stand,tag=lp.mob_marker]

# 清理实体
kill @e[x=0,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:interaction,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:mannequin]

# 返回大厅
clear @a[x=0,team=!main.spectator]
gamemode adventure @a[x=0]
scoreboard players set @a[x=0] lp.player_status 0

tellraw @a[x=0] {"text":"游戏已结束，已返回大厅","color":"yellow"}

execute as @a[x=0] in minecraft:overworld run tp @s -467 116 1 -90 0
