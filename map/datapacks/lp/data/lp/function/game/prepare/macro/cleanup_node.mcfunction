$execute if data storage lp:temp bvis[{x:$(x),z:$(z)}] run return 0
$data modify storage lp:temp bvis append value {x:$(x),z:$(z)}

# 整列跟中心参照区比，全是空气就不 fill
# if blocks 只给一个对角坐标，区域自动跟来源一样大
$execute positioned $(x) 0 $(z) unless blocks ~-2 $(ymin) ~-2 ~2 $(ymax) ~2 -2 $(ymin) -2 all run fill ~-2 $(ymin) ~-2 ~2 $(ymax) ~2 minecraft:air
scoreboard players add clr_done lp.temp 1

# 把当前坐标固定到分数里，后面分支都以它为基准
$scoreboard players set cx0 lp.temp $(x)
$scoreboard players set cz0 lp.temp $(z)

# 右邻 x+5
scoreboard players operation nx lp.temp = cx0 lp.temp
scoreboard players operation nz lp.temp = cz0 lp.temp
scoreboard players add nx lp.temp 5
execute if score nx lp.temp <= clr_xmax lp.temp store result storage lp:temp bpush.x int 1 run scoreboard players get nx lp.temp
execute if score nx lp.temp <= clr_xmax lp.temp store result storage lp:temp bpush.z int 1 run scoreboard players get nz lp.temp
execute if score nx lp.temp <= clr_xmax lp.temp run data modify storage lp:temp bqueue append from storage lp:temp bpush

# 左邻 x-5
scoreboard players operation nx lp.temp = cx0 lp.temp
scoreboard players operation nz lp.temp = cz0 lp.temp
scoreboard players remove nx lp.temp 5
execute if score nx lp.temp >= clr_xmin lp.temp store result storage lp:temp bpush.x int 1 run scoreboard players get nx lp.temp
execute if score nx lp.temp >= clr_xmin lp.temp store result storage lp:temp bpush.z int 1 run scoreboard players get nz lp.temp
execute if score nx lp.temp >= clr_xmin lp.temp run data modify storage lp:temp bqueue append from storage lp:temp bpush

# 后邻 z+5
scoreboard players operation nx lp.temp = cx0 lp.temp
scoreboard players operation nz lp.temp = cz0 lp.temp
scoreboard players add nz lp.temp 5
execute if score nz lp.temp <= clr_zmax lp.temp store result storage lp:temp bpush.x int 1 run scoreboard players get nx lp.temp
execute if score nz lp.temp <= clr_zmax lp.temp store result storage lp:temp bpush.z int 1 run scoreboard players get nz lp.temp
execute if score nz lp.temp <= clr_zmax lp.temp run data modify storage lp:temp bqueue append from storage lp:temp bpush

# 前邻 z-5
scoreboard players operation nx lp.temp = cx0 lp.temp
scoreboard players operation nz lp.temp = cz0 lp.temp
scoreboard players remove nz lp.temp 5
execute if score nz lp.temp >= clr_zmin lp.temp store result storage lp:temp bpush.x int 1 run scoreboard players get nx lp.temp
execute if score nz lp.temp >= clr_zmin lp.temp store result storage lp:temp bpush.z int 1 run scoreboard players get nz lp.temp
execute if score nz lp.temp >= clr_zmin lp.temp run data modify storage lp:temp bqueue append from storage lp:temp bpush
