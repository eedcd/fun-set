scoreboard objectives add pvp.temp dummy
scoreboard objectives add pvp.settings dummy
scoreboard objectives add pvp.game dummy
scoreboard objectives add pvp.statistics dummy
scoreboard objectives add pvp.display dummy
scoreboard objectives add pvp.kill playerKillCount
scoreboard objectives add pvp.player_hp health [{"text":"❤","color":"red","bold":true}]
scoreboard objectives setdisplay below_name pvp.player_hp
scoreboard objectives modify pvp.display numberformat blank
scoreboard objectives modify pvp.display displayname {"text":"游戏中...", "color":"yellow", "bold":true}
scoreboard players set 1200 pvp.temp 1200
scoreboard players set 20 pvp.temp 20

team add a
team add b
team modify a color blue
team modify b color red

stopwatch create pvp:items_hurt