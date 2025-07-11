execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[混乱]",color:"dark_gray",hover_event:{action:"show_text",value:"敌方队伍打开友伤 持续至回合结束"}}]

function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] run team modify blue friendlyFire true

execute if entity @s[team=blue] run team modify red friendlyFire true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_hunluan kardCount
