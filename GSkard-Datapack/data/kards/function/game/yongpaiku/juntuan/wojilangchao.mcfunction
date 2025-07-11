
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[我即浪潮]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤2只骑着守卫者的三叉戟溺尸"}}]
   
   execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon minecraft:guardian ~ 1 ~ {Team:blue,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:blue}]}
   execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon minecraft:guardian ~ 1 ~ {Team:blue,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:blue}]}
   
   execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon minecraft:guardian ~ 1 ~ {Team:red,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:red}]}
   execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon minecraft:guardian ~ 1 ~ {Team:red,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:red}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wojilangchao kardCount
