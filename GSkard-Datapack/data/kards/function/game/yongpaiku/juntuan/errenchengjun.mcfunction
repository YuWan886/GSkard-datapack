execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[二人成军]",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤两只史莱姆"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=6r] at @s run summon slime ~ 0 ~ {Size:5,Team:red}
    execute if entity @s[team=red] as @e[tag=8r] at @s run summon slime ~ 0 ~ {Size:5,Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=6b] at @s run summon slime ~ 0 ~ {Size:5,Team:blue}
    execute if entity @s[team=blue] as @e[tag=8b] at @s run summon slime ~ 0 ~ {Size:5,Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_errenchengjun kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1