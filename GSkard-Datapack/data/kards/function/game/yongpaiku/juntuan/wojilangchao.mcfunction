
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[我即浪潮]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤2只骑着守卫者的三叉戟溺尸"}}]
   #红队用
   execute if entity @s[team=blue] as @e[tag=6b] at @s run summon minecraft:guardian ~ 0 ~ {Team:blue,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:blue}]}
   execute if entity @s[team=blue] as @e[tag=8b] at @s run summon minecraft:guardian ~ 0 ~ {Team:blue,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:blue}]}
   #蓝队用
   execute if entity @s[team=red] as @e[tag=6r] at @s run summon minecraft:guardian ~ 0 ~ {Team:red,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:red}]}
   execute if entity @s[team=red] as @e[tag=8r] at @s run summon minecraft:guardian ~ 0 ~ {Team:red,Passengers:[{Color:14,id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident"}},Team:red}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wojilangchao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1