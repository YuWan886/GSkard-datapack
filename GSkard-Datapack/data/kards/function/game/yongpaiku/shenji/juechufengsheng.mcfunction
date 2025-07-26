

function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
effect give @s instant_health 1 200 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCountmax -= #kard_juechufengsheng kardCountmax
