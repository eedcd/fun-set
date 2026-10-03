# 入队
execute if score team_fight pvp.settings matches 0 as @a[x=0] run team leave @s
execute if score team_fight pvp.settings matches 1 run function pvp:team/join

# 友伤
execute if score friendly_fire pvp.settings matches 1 run team modify a friendlyFire false
execute if score friendly_fire pvp.settings matches 1 run team modify b friendlyFire false
execute if score friendly_fire pvp.settings matches 0 run team modify a friendlyFire true
execute if score friendly_fire pvp.settings matches 0 run team modify b friendlyFire true