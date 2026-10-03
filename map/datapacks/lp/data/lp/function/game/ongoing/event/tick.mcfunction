# 事件倒计时
scoreboard players remove event_timer lp.game 1
execute if score event_timer lp.game matches ..0 run function lp:game/ongoing/event/event_fire with storage lp:event

# 物品获取加速倒计时
execute if score item_boost lp.game matches 1 run scoreboard players remove boost_timer lp.game 1
execute if score boost_timer lp.game matches ..0 run scoreboard players set item_boost lp.game 0

# 剑雨持续
execute if score arrow_timer lp.game matches 1.. run function lp:game/ongoing/event/arrow_rain_tick

# 天打雷劈持续
execute if score thunder_n lp.game matches 1.. run function lp:game/ongoing/event/thunder_tick

# Lets go血量上限倒计时
execute if score letsgo_timer lp.game matches 1.. run scoreboard players remove letsgo_timer lp.game 1
execute if score letsgo_timer lp.game matches 0 run function lp:game/ongoing/event/letsgo_recover

# 黑夜浪潮持续
execute if score nightwave_timer lp.game matches 1.. run function lp:game/ongoing/event/nightwave_tick
