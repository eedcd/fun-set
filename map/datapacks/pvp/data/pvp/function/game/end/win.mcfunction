# 立即停止游戏状态，防止下一tick再次触发win
scoreboard players set status pvp.game 0

# 胜利 title 展示
title @a[x=0] title {"text":"游戏结束！", "color":"gold", "bold":true}

# 根据获胜队伍显示不同颜色的副标题
# 队伍 A 获胜
execute if score win_team pvp.game matches 0 run title @a[x=0] subtitle {"text":"队伍 A 获胜！", "color":"blue", "bold":true}
# 队伍 B 获胜
execute if score win_team pvp.game matches 1 run title @a[x=0] subtitle {"text":"队伍 B 获胜！", "color":"red", "bold":true}
# 无队伍模式 — 显示获胜玩家名
execute if score win_team pvp.game matches 2 run title @a[x=0] subtitle [{"text":"获胜者：", "color":"green", "bold":true}, {"selector":"@a[x=0,gamemode=adventure,limit=1]", "color":"gold", "bold":true}]

# 播放胜利音效
execute as @a[x=0] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# MVP 结算（如果 mvp_settlement 为 1）
# 先重置追踪变量
scoreboard players set mvp_top pvp.temp -1
tag @a[x=0] remove pvp_mvp
# 遍历所有玩家找出击杀数最高的
execute as @a[x=0,gamemode=adventure] run function pvp:game/end/mvp_check

# 如果找到 MVP（有玩家带 pvp_mvp 标签）且 mvp_settlement 开启，则 actionbar 展示 MVP
execute if score mvp_settlement pvp.settings matches 1 if entity @a[x=0,tag=pvp_mvp,limit=1] run title @a[x=0] actionbar [{"text":"🏆 MVP：", "color":"yellow", "bold":true}, {"selector":"@a[x=0,tag=pvp_mvp,limit=1]", "color":"gold", "bold":true}, {"text":"（", "color":"gray"}, {"score":{"name":"@a[x=0,tag=pvp_mvp,limit=1]","objective":"pvp.kill"},"color":"red","bold":true}, {"text":" 击杀）", "color":"gray"}]

# 等待2秒后结束游戏
schedule function pvp:game/end/clear 2s