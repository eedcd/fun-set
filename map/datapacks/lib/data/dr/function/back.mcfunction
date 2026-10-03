function dr:disable
# scoreboard players reset @s dr.death_coount
data modify storage lib:dr temp set value {}
$data modify storage lib:dr temp.UUID set value $(UUID)
$data modify storage lib:dr temp.Pos0 set from storage lib:dr players[{UUID:$(UUID)}].Pos[0]
$data modify storage lib:dr temp.Pos1 set from storage lib:dr players[{UUID:$(UUID)}].Pos[1]
$data modify storage lib:dr temp.Pos2 set from storage lib:dr players[{UUID:$(UUID)}].Pos[2]
$data modify storage lib:dr temp.Rotation0 set from storage lib:dr players[{UUID:$(UUID)}].Rotation[0]
$data modify storage lib:dr temp.Rotation1 set from storage lib:dr players[{UUID:$(UUID)}].Rotation[1]
$data modify storage lib:dr temp.Dimension set from storage lib:dr players[{UUID:$(UUID)}].Dimension
schedule function dr:schedule/back 2t