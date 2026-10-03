# 幻翼突袭：场地召唤一群幻翼
scoreboard players set group_n lp.temp 6
data modify storage lp:temp group_mob set value "phantom"
function lp:game/ongoing/event/group_spawn
