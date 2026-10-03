# 为无队伍玩家随机传送
execute store result storage pvp:rtp x int 1 run random value 102..135
execute store result storage pvp:rtp z int 1 run random value 102..121
function pvp:game/macro/rtp_tp with storage pvp:rtp