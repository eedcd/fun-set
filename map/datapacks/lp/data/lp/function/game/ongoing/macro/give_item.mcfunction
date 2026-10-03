$data modify storage lp:temp it set from storage lp:presummon_dict items[$(r)]
execute unless data storage lp:temp it.components run data modify storage lp:temp it.components set value {}
function lp:game/ongoing/macro/give_item_drop with storage lp:temp it