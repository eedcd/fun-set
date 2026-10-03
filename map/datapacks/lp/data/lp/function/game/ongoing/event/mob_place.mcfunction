$execute at @s rotated $(r2) 0 run tp @s ^ ^ ^$(r)
execute at @s if score mt lp.temp matches 0 run summon minecraft:zombie ~ ~ ~ {Tags:["lp.wave_mob"]}
execute at @s if score mt lp.temp matches 1 run summon minecraft:skeleton ~ ~ ~ {Tags:["lp.wave_mob"]}
execute at @s if score mt lp.temp matches 2 run summon minecraft:spider ~ ~ ~ {Tags:["lp.wave_mob"]}
kill @s