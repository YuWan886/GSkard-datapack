execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[射手部队]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤2只骷髅2只沼骸2只流浪者"}}]

    execute if entity @s[team=red] as @e[tag=blue_marker_1] at @s run summon minecraft:bogged ~ 1 ~ {Team:red,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon minecraft:skeleton ~ 1 ~ {Team:red,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon minecraft:stray ~ 1 ~ {Team:red,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_3] at @s run summon minecraft:stray ~ 1 ~ {Team:red,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon minecraft:skeleton ~ 1 ~ {Team:red,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon minecraft:bogged ~ 1 ~ {Team:red,equipment:{mainhand:{id:"minecraft:bow"}}}

    execute if entity @s[team=blue] as @e[tag=red_marker_1] at @s run summon minecraft:bogged ~ 1 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon minecraft:skeleton ~ 1 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon minecraft:stray ~ 1 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_3] at @s run summon minecraft:stray ~ 1 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon minecraft:skeleton ~ 1 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:bow"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon minecraft:bogged ~ 1 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:bow"}}}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_sheshoubudui kardCount
