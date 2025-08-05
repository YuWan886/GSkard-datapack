



   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon rabbit ~ 0 ~ {RabbitType:99,Team:red,Age:9999999}

   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon rabbit ~ 0 ~ {RabbitType:99,Team:blue,Age:9999999}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shashoutu kardCount
