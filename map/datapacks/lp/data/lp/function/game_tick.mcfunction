# 场地清理
execute if score clearing lp.temp matches 1 run function lp:game/prepare/cleanup_tick

# 初始化
execute if score init lp.temp matches 1.. run function lp:game/prepare/init_tick

# 进度条
execute if score init lp.temp matches 3.. run bossbar set lp:init players @a
execute if score clearing lp.temp matches 1 run bossbar set lp:init players @a
execute if score building lp.temp matches 1 run bossbar set lp:init players @a

# 建图
function lp:game/prepare/build_tick

# 游戏开始倒计时
execute if score status lp.game matches 2 run function lp:game/prepare/countdown_tick

# 游戏进行时
execute if score status lp.game matches 3 run function lp:game/ongoing/tick

# 获胜结算
execute if score status lp.game matches 4 run function lp:game/end/tick
