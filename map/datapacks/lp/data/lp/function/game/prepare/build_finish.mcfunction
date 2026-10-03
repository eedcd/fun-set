kill @e[x=0,type=minecraft:armor_stand,tag=lp.builder]
scoreboard players set building lp.temp 0
data remove storage lp:temp bdy
bossbar set lp:init players

# 开局重置
scoreboard players set @a[x=0] lp.kill 0
execute as @a[x=0] run attribute @s minecraft:max_health modifier remove lp:event_letsgo
effect clear @a[x=0]

gamemode survival @a[x=0,team=!main.spectator]
gamemode spectator @a[x=0,team=main.spectator]

# 分散玩家
function lp:game/prepare/spread_players