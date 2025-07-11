execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无力]",color:"dark_gray",hover_event:{action:"show_text",value:"敌方玩家获得虚弱1 持续20s"}}]
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] weakness 20 0 true
execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] weakness 20 0 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuli kardCount
