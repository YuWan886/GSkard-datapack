execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[紧急调遣]",color:"dark_purple",hover_event:{action:"show_text",value:[{text: "获得",color:"gray",italic:false},{text: "3Kmax",color:"gold",italic:false},{text: " 若剩余点数不小于5 则抽1张",color:"gray",italic:false},{text: "法术牌",color:"gold",italic:false}]}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_jinjidiaoqian kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s kardCountmax 3
execute if score @s kardCount matches 5.. run scoreboard players add @s fashucishu 1
