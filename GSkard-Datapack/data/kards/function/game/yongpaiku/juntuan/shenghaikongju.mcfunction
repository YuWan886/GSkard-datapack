execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[深海恐惧]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤三只守卫者"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon guardian ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon guardian ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shenghaikongju kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1