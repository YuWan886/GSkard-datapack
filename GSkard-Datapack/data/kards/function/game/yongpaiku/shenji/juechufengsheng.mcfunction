function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance
effect give @s instant_health 1 200 false
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCountmax -= #kard_juechufengsheng kardCountmax
