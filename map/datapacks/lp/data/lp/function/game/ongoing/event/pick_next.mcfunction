execute if score event_stage lp.game matches 1 store result score event_idx lp.game run random value 0..3

execute if score event_stage lp.game matches 2 store result score event_idx lp.game run random value 0..5

execute if score event_stage lp.game matches 3 store result score event_idx lp.game run random value 0..3

# 阶段1
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 0 run data modify storage lp:event name set value "物品获取x2"
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 1 run data modify storage lp:event name set value "随机效果"
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 2 run data modify storage lp:event name set value "生命恢复"
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 3 run data modify storage lp:event name set value "急速挖掘"

# 阶段2
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 0 run data modify storage lp:event name set value "怪物浪潮"
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 1 run data modify storage lp:event name set value "剑雨"
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 2 run data modify storage lp:event name set value "天打雷劈"
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 3 run data modify storage lp:event name set value "全员隐身"
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 4 run data modify storage lp:event name set value "天降补给"
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 5 run data modify storage lp:event name set value "移形换位"

# 阶段3
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 0 run data modify storage lp:event name set value "凋零降临"
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 1 run data modify storage lp:event name set value "BOOMM"
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 2 run data modify storage lp:event name set value "Lets go"
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 3 run data modify storage lp:event name set value "幻翼突袭"
