# 焰火骑士团
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.juntuan.yanhuoqishituan.1",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤四只铁套猪灵"}}]
   #红队用
    execute if entity @s[team=red] as @e[tag=2r] at @s run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=red] as @e[tag=12r] at @s run summon piglin ~ 0 ~ {Team:red,IsBaby:false,Tags:['yanhuoqishi']}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=2b] at @s run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
    execute if entity @s[team=blue] as @e[tag=12b] at @s run summon piglin ~ 0 ~ {Team:blue,IsBaby:false,Tags:['yanhuoqishi']}
execute as @e[type=piglin,tag=yanhuoqishi] run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/2
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1