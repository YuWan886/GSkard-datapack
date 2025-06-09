execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[劫掠小队]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤3只劫掠者1只卫道士"}}]

    #红队用
    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon pillager ~ 5 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon pillager ~ 5 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_10] at @s run summon pillager ~ 5 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:blue}
   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon vindicator ~ 5 ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}},Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
   #蓝队用
   execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon pillager ~ 5 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:red}
   execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon pillager ~ 5 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:red}
   execute if entity @s[team=red] as @e[tag=blue_marker_10] at @s run summon pillager ~ 5 ~ {equipment:{mainhand:{id:"minecraft:crossbow"}},Team:red}
   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon vindicator ~ 5 ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}},Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jieluexiaodui kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1