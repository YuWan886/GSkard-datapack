
# 模版

# 法术

# 基本


function kards:game/yongpaiku/xianjing/jiance/mobjiance
scoreboard players add @s jiben 1
# 军团


function kards:game/yongpaiku/xianjing/jiance/mobjiance
# 神迹

# 图腾

# 陷阱
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_aqua",hover_event:{action:"show_text",value:"xxx"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[xxx]",color:"dark_aqua",hover_event:{action:"show_text",value:"xxx"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]
# 衍生

# 诅咒



# 清除
item replace entity @s weapon.offhand with air
# scoreboard players remove @s kardCount xx
