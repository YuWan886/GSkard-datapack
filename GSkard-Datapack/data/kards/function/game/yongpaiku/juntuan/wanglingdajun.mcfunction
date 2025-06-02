execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[亡灵大军]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤两只凋零骷髅、三只骷髅"}}]
    #红队用
    execute if entity @s[team=blue] as @e[tag=1b] at @s run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=blue] as @e[tag=3b] at @s run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=blue] as @e[tag=12b] at @s run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:blue}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100}]}
    #蓝队用
    execute if entity @s[team=red] as @e[tag=1r] at @s run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=red] as @e[tag=3r] at @s run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=red] as @e[tag=12r] at @s run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:red}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wanglingdajun kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1