# 本 tick 预算内连续出队处理节点
execute unless data storage lp:temp bqueue[0] run return 0
execute if score node_budget lp.temp matches ..0 run return 0
# 清够总数就停，免得重复项空转
execute if score clr_total lp.temp matches 1.. if score clr_done lp.temp >= clr_total lp.temp run return 0

data modify storage lp:temp bnode set from storage lp:temp bqueue[0]
data remove storage lp:temp bqueue[0]
function lp:game/prepare/macro/cleanup_node with storage lp:temp bnode

scoreboard players remove node_budget lp.temp 1
function lp:game/prepare/cleanup_node_loop
