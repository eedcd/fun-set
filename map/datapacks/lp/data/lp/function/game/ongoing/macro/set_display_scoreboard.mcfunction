$scoreboard players display name 1 lp.display [{"text":"⏱ 已进行 ","color":"white","bold":true},{"text":"$(min)","color":"gold","bold":true},{"text":"' ","color":"gray","bold":true},{"text":"$(sec)","color":"gold","bold":true},{"text":"''","color":"gray","bold":true}]
$scoreboard players display name 2 lp.display [{"text":"剩余玩家 ","color":"white","bold":true},{"text":"$(ltp)","color":"gold","bold":true}]
scoreboard players display name 3 lp.display [{"text":"下一个事件","color":"white","bold":true},{"text":":","color":"gray","bold":true}]
$scoreboard players display name 4 lp.display [{"text":"$(emm)","color":"gold","bold":true},{"text":" : ","color":"gray","bold":true},{"text":"$(ess)","color":"gold","bold":true},{"text":" ","color":"white"},{"text":"$(evn)","color":"yellow","bold":true}]

scoreboard players set 1 lp.display 4
scoreboard players set 2 lp.display 3
scoreboard players set 3 lp.display 2
scoreboard players set 4 lp.display 1