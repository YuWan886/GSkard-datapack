execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[小鬼当家]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤4只攻击分别造成凋零 中毒 失明 缓慢的小僵尸"}}]
   #红队用
    execute if entity @s[team=red] as @e[tag=4r] at @s run summon zombie ~ 0 ~ {Team:red,Tags:["凋零小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:0}}}]}
    execute if entity @s[team=red] as @e[tag=6r] at @s run summon zombie ~ 0 ~ {Team:red,Tags:["缓慢小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:4999240}}}]}
    execute if entity @s[team=red] as @e[tag=8r] at @s run summon zombie ~ 0 ~ {Team:red,Tags:["中毒小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:3956997}}}]}
    execute if entity @s[team=red] as @e[tag=10r] at @s run summon zombie ~ 0 ~ {Team:red,Tags:["失明小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:15330277}}}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=4b] at @s run summon zombie ~ 0 ~ {Team:blue,Tags:["凋零小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:0}}}]}
    execute if entity @s[team=blue] as @e[tag=6b] at @s run summon zombie ~ 0 ~ {Team:blue,Tags:["缓慢小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:4999240}}}]}
    execute if entity @s[team=blue] as @e[tag=8b] at @s run summon zombie ~ 0 ~ {Team:blue,Tags:["中毒小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:3956997}}}]}
    execute if entity @s[team=blue] as @e[tag=10b] at @s run summon zombie ~ 0 ~ {Team:blue,Tags:["失明小鬼"],IsBaby:true,HandItems:[{id:"minecraft:stick",components:{enchantment_glint_override:1b}},{}],ArmorItems:[{},{},{},{id: "minecraft:leather_helmet",components:{dyed_color:{rgb:15330277}}}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiaoguidangjia kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
