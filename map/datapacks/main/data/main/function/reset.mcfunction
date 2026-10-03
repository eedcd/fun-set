execute in minecraft:overworld run setworldspawn -3 106 0 -90 0

kill @e[type=!minecraft:player]

advancement revoke @a everything

team remove main.spectator

execute in minecraft:overworld positioned 0.0 0.0 0.0 run function lobby:init
function main:init

function lp:reset
function pvp:reset

execute as @a run function lobby:join