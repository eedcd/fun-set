# 每 tick 放多少方块的预算，空格也计入，防止卡顿
# 默认值在 init 的 blocks_per_tick
execute if score blocks_per_tick lp.temp matches ..0 run scoreboard players set blocks_per_tick lp.temp 2000
scoreboard players operation blk_budget lp.temp = blocks_per_tick lp.temp
function lp:game/prepare/build_row_step
