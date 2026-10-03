# MVP 检查 — 由每个冒险模式玩家执行
# 情况1：当前玩家击杀数 > 当前最大值 → 新的唯一MVP（先清除所有旧MVP标签）
execute if score @s pvp.kill > mvp_top pvp.temp run tag @a[x=0] remove pvp_mvp
execute if score @s pvp.kill > mvp_top pvp.temp run scoreboard players operation mvp_top pvp.temp = @s pvp.kill
# 情况2：当前玩家击杀数 >= 当前最大值（且>0）→ MVP（包括新最高和并列）
execute if score @s pvp.kill >= mvp_top pvp.temp if score @s pvp.kill matches 1.. run tag @s add pvp_mvp