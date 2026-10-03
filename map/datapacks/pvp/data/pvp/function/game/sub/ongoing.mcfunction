## 时间显示
scoreboard players add game pvp.timer 1

# 分钟
scoreboard players operation min pvp.temp = game pvp.timer
scoreboard players operation min pvp.temp /= optp1 pvp.temp

# 秒
scoreboard players operation rem pvp.temp = game pvp.timer
scoreboard players operation rem pvp.temp %= optp1 pvp.temp
scoreboard players operation sec pvp.temp = rem pvp.temp
scoreboard players operation sec pvp.temp /= optp2 pvp.temp

# 存储准备传参
execute store result storage pvp:timer min int 1 run scoreboard players get min pvp.temp
execute store result storage pvp:timer sec int 1 run scoreboard players get sec pvp.temp
function pvp:game/sub/sub/distime with storage pvp:timer


## 附加增益：第2分钟力量1，第5分钟力量2
execute if score addition_bt pvp.settings matches 1 if score game pvp.timer matches 2400 run effect give @a[x=0] minecraft:strength infinite 0 true
execute if score addition_bt pvp.settings matches 1 if score game pvp.timer matches 6000 run effect give @a[x=0] minecraft:strength infinite 1 true


## 死亡判断
execute as @a[x=0] at @s run execute if block ~ ~-1 ~ minecraft:oak_log run function pvp:game/sub/sub/die


## 胜利判断
# 统计场上冒险模式存活玩家
execute store result score alive_count pvp.temp run execute if entity @a[x=0,gamemode=adventure]

# 如果没有存活玩家（平局/全部阵亡），不触发胜利
execute if score alive_count pvp.temp matches 0 run return 0

# 分别统计 Team A、Team B、无队伍的存活玩家数
execute store result score alive_a pvp.temp run execute if entity @a[x=0,gamemode=adventure,team=a]
execute store result score alive_b pvp.temp run execute if entity @a[x=0,gamemode=adventure,team=b]
execute store result score alive_none pvp.temp run execute if entity @a[x=0,gamemode=adventure,team=]

# 只有 Team A 存活（B队和无队伍都为0）
execute if score alive_a pvp.temp matches 1.. if score alive_b pvp.temp matches 0 if score alive_none pvp.temp matches 0 run scoreboard players set win_team pvp.temp 0
execute if score alive_a pvp.temp matches 1.. if score alive_b pvp.temp matches 0 if score alive_none pvp.temp matches 0 run function pvp:game/sub/sub/win

# 只有 Team B 存活（A队和无队伍都为0）
execute if score alive_a pvp.temp matches 0 if score alive_b pvp.temp matches 1.. if score alive_none pvp.temp matches 0 run scoreboard players set win_team pvp.temp 1
execute if score alive_a pvp.temp matches 0 if score alive_b pvp.temp matches 1.. if score alive_none pvp.temp matches 0 run function pvp:game/sub/sub/win

# 只有单个无队伍玩家存活
execute if score alive_a pvp.temp matches 0 if score alive_b pvp.temp matches 0 if score alive_none pvp.temp matches 1 run scoreboard players set win_team pvp.temp 2
execute if score alive_a pvp.temp matches 0 if score alive_b pvp.temp matches 0 if score alive_none pvp.temp matches 1 run function pvp:game/sub/sub/win