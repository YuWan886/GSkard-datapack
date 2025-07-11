# 模版

# 法术
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_purple",hover_event:{action:"show_text",value:{text: "xxxx"}}}]
# 基本
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"blue",hover_event:{action:"show_text",value:{text: "xxxx"}}}]

function kards:game/yongpaiku/xianjing/jiance/mobjiance
scoreboard players add @s jiben 1
# 军团
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xx]",color:"dark_green",hover_event:{action:"show_text",value:"xxx"}}]

function kards:game/yongpaiku/xianjing/jiance/mobjiance
# 神迹
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"white",hover_event:{action:"show_text",value:"xxx"}}]
# 图腾
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"red",hover_event:{action:"show_text",value:"xxx"}}]
# 陷阱
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_aqua",hover_event:{action:"show_text",value:"xxx"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_aqua",hover_event:{action:"show_text",value:"xxx"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]
# 衍生
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_blue",hover_event:{action:"show_text",value:{text: "xxxx"}}},]
# 诅咒
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_gray",hover_event:{action:"show_text",value:"xxx"}}]


# 清除
item replace entity @s weapon.offhand with air
# scoreboard players remove @s kardCount xx
