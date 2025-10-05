function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance

execute if entity @s[team=red] positioned as @e[tag=blue_marker_7] run tp @s ~ 0 ~

execute if entity @s[team=blue] positioned as @e[tag=red_marker_7] run tp @s ~ 0 ~
scoreboard players set @s feileishen 200
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_feileishen kardCount
