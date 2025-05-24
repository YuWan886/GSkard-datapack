execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zuzhou.diandao.1",color:"dark_gray",hover_event:{action:"show_text","value":"使敌方漂浮"}}]

execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] levitation 5 10 true
execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] levitation 5 10 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_diandao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1