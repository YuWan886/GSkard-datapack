execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[四季如春]",color:"dark_purple",hover_event:{action:"show_text",value:[{text: "抽",color:"gray",italic:false},{text: "2张牌",color:"gold",italic:false},{text: " 队伍其他玩家获得",color:"gray",italic:false},{text: "4K",color:"gold",italic:false},{text:"\n若增加的费用总数不大于8K 则",color:"gray",italic:false},{text:"你额外获得4K",color:"gold",italic:false}]}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_sijiruchun kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
tag @s add K

execute if entity @s[team=red] run scoreboard players add @a[team=red,tag=!K] kardCount 4
execute if entity @s[team=red] store result score #temp temp if entity @a[team=red,tag=!K,gamemode=adventure]

execute if entity @s[team=blue] run scoreboard players add @a[team=blue,tag=!K] kardCount 4
execute if entity @s[team=blue] store result score #temp temp if entity @a[team=blue,tag=!K,gamemode=adventure]
tag @s remove K

scoreboard players add @s cishu 2

execute if score #temp temp matches ..2 run scoreboard players add @s kardCount 4
scoreboard players reset #temp