# 根据当前阶段与随机索引触发事件
# 阶段1
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 0 run function lp:game/ongoing/event/stage1_speed
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 1 run function lp:game/ongoing/event/stage1_effect
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 2 run function lp:game/ongoing/event/stage1_regen
execute if score event_stage lp.game matches 1 if score event_idx lp.game matches 3 run function lp:game/ongoing/event/stage1_haste

# 阶段2
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 0 run function lp:game/ongoing/event/stage2_wave
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 1 run function lp:game/ongoing/event/stage2_arrow
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 2 run function lp:game/ongoing/event/stage2_thunder
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 3 run function lp:game/ongoing/event/stage2_invis
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 4 run function lp:game/ongoing/event/stage2_supply
execute if score event_stage lp.game matches 2 if score event_idx lp.game matches 5 run function lp:game/ongoing/event/stage2_shuffle

# 阶段3
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 0 run function lp:game/ongoing/event/stage3_wither
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 1 run function lp:game/ongoing/event/stage3_boomm
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 2 run function lp:game/ongoing/event/stage3_letsgo
execute if score event_stage lp.game matches 3 if score event_idx lp.game matches 3 run function lp:game/ongoing/event/stage3_phantom
