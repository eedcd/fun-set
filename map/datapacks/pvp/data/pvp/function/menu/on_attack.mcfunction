# 由 interaction 实体执行，分解攻击者 UUID
data modify storage pvp:temp uuid set value {a:0,b:0,c:0,d:0}
execute store result storage pvp:temp uuid.a int 1 run data get entity @s attack.player[0]
execute store result storage pvp:temp uuid.b int 1 run data get entity @s attack.player[1]
execute store result storage pvp:temp uuid.c int 1 run data get entity @s attack.player[2]
execute store result storage pvp:temp uuid.d int 1 run data get entity @s attack.player[3]
function pvp:menu/check_click with storage pvp:temp uuid