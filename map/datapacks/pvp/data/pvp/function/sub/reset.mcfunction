kill @e[x=0]

scoreboard objectives remove pvp.temp
scoreboard objectives remove pvp.settings
scoreboard objectives remove pvp.game
scoreboard objectives remove pvp.statistics
scoreboard objectives remove pvp.display
scoreboard objectives remove pvp.kill
scoreboard objectives remove pvp.player_hp
team remove a
team remove b

function pvp:init

scoreboard players set status pvp.game 0
