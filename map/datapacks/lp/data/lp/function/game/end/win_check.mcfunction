# 胜利判定
scoreboard players set alive lp.temp 0
execute as @a[x=0,gamemode=survival] run scoreboard players add alive lp.temp 1
execute if score alive lp.temp matches ..1 if score alive lp.temp matches 0 run return run function lp:game/end/draw

# 数一下还活着的队伍数和无队存活人数
scoreboard players set alive_teams lp.temp 0
execute if entity @a[x=0,gamemode=survival,team=lp.red,limit=1] run scoreboard players add alive_teams lp.temp 1
execute if entity @a[x=0,gamemode=survival,team=lp.blue,limit=1] run scoreboard players add alive_teams lp.temp 1
execute if entity @a[x=0,gamemode=survival,team=lp.green,limit=1] run scoreboard players add alive_teams lp.temp 1
execute if entity @a[x=0,gamemode=survival,team=lp.yellow,limit=1] run scoreboard players add alive_teams lp.temp 1
scoreboard players set alive_noteam lp.temp 0
execute as @a[x=0,gamemode=survival,team=] run scoreboard players add alive_noteam lp.temp 1
execute as @a[x=0,gamemode=survival,team=lp.none] run scoreboard players add alive_noteam lp.temp 1

# 剩一支队伍存活
execute if score alive_teams lp.temp matches 1 if score alive_noteam lp.temp matches 0 run return run function lp:game/end/win_team
# 无队伍且仅剩1人
execute if score alive_teams lp.temp matches 0 if score alive_noteam lp.temp matches 1 run return run function lp:game/end/win_solo
