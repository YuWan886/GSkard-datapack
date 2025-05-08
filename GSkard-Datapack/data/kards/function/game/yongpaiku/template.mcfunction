# 模版

# 法术
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"dark_purple",hover_event:{action:"show_text",value:{translate: "game.yongpaiku.template.3"}}}]
# 基本
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"blue",hover_event:{action:"show_text",value:{translate: "game.yongpaiku.template.3"}}}]

function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
# 军团
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.4",color:"dark_green",hover_event:{action:"show_text",value:"xxx"}}]

function kards:game/yongpaiku/xianjin/jiance/mobjiance
# 神迹
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"white",hover_event:{action:"show_text",value:"xxx"}}]
# 图腾
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"red",hover_event:{action:"show_text",value:"xxx"}}]
# 陷阱
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"dark_aqua",hover_event:{action:"show_text",value:"xxx"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.5",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"dark_aqua",hover_event:{action:"show_text",value:"xxx"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.5",color:"dark_aqua"}]
# 衍生
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"dark_blue",hover_event:{action:"show_text",value:{translate: "game.yongpaiku.template.3"}}},]
# 诅咒
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.template.2",color:"dark_gray",hover_event:{action:"show_text",value:"xxx"}}]


# 清除
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount xxx
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1