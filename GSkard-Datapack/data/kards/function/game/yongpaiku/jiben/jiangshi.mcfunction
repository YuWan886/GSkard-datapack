function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon zombie ~ 0 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},attributes:[{id:"follow_range",base:100}],Tags:["jiben_zombie"]}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},attributes:[{id:"follow_range",base:100}],Tags:["jiben_zombie"]}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jiangshi kardCount



