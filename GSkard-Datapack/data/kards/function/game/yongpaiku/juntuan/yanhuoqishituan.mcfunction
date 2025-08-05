
# 焰火骑士团

   
    execute if entity @s[team=red] at @e[tag=blue_marker_2] run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] at @e[tag=blue_marker_5] run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] at @e[tag=blue_marker_9] run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] at @e[tag=blue_marker_12] run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}

    execute if entity @s[team=blue] at @e[tag=red_marker_2] run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] at @e[tag=red_marker_5] run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] at @e[tag=red_marker_9] run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] at @e[tag=red_marker_12] run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
execute as @e[type=piglin,tag=yanhuoqishi] run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/2
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_yanhuoqishituan kardCount
