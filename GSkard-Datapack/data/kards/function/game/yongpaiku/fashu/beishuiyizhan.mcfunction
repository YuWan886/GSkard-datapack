execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[背水一战]",color:"dark_purple",hover_event:{action:"show_text",value:{text:"每有一个友方死亡 就获得10点数 抽二张牌"}}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_beishuiyizhan kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 1.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 1.. run scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 2.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 2.. run scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 3.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 3.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 1.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 1.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 2.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 2.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 3.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 3.. run scoreboard players add @s cishu 2
