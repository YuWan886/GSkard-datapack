
# 焰火骑士团

   
    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon piglin ~ 1 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon piglin ~ 1 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon piglin ~ 1 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=blue_marker_12] at @s run summon piglin ~ 1 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}

    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon piglin ~ 1 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon piglin ~ 1 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon piglin ~ 1 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=red_marker_12] at @s run summon piglin ~ 1 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
execute as @e[type=piglin,tag=yanhuoqishi] run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/2
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_yanhuoqishituan kardCount
