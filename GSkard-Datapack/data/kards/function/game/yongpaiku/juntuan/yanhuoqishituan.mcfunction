# 焰火骑士团
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[焰火骑士团]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤四只铁套猪灵"}}]
   #红队用
    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon piglin ~ 5 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon piglin ~ 5 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon piglin ~ 5 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=blue_marker_12] at @s run summon piglin ~ 5 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon piglin ~ 5 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon piglin ~ 5 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon piglin ~ 5 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=red_marker_12] at @s run summon piglin ~ 5 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
execute as @e[type=piglin,tag=yanhuoqishi] run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/2
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_yanhuoqishituan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1