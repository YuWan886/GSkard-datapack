execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[黑山羊之拥]",color:"dark_purple",hover_event:{action:"show_text",value:"使用后进行一次随机点数(1~10) 根据结果不同获得不同效果"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_heishanyangzhiyong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute store result score @s fashu_heishanyangzhiyong run random value 1..10

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players add @s HealBack 16
execute if score @s fashu_heishanyangzhiyong matches 4..6 run scoreboard players add @s HealBack 30
execute if score @s fashu_heishanyangzhiyong matches 7..9 run scoreboard players add @s HealBack 48
execute if score @s fashu_heishanyangzhiyong matches 10 run scoreboard players add @s HealBack 20
execute if score @s[team=red] fashu_heishanyangzhiyong matches 10 run scoreboard players add @a[team=red] HealBack 40
execute if score @s[team=blue] fashu_heishanyangzhiyong matches 10 run scoreboard players add @a[team=blue] HealBack 40

execute if score @s fashu_heishanyangzhiyong matches 1..3 run scoreboard players remove @s kardCountmax 2
execute if score @s fashu_heishanyangzhiyong matches 4..6 run scoreboard players remove @s kardCountmax 3
execute if score @s fashu_heishanyangzhiyong matches 7..9 run scoreboard players remove @s kardCountmax 4
execute if score @s fashu_heishanyangzhiyong matches 10 run scoreboard players remove @s kardCountmax 6

execute if score @s fashu_heishanyangzhiyong matches 1..3 run tellraw @a [{selector:"@s"},{text: "\n -2Kmax",color:"red",bold:false},{text: " 生命恢复8♥",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 4..6 run tellraw @a [{selector:"@s"},{text: "\n -3Kmax",color:"red",bold:false},{text: " 生命恢复15♥",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 7..9 run tellraw @a [{selector:"@s"},{text: "\n -4Kmax",color:"red",bold:false},{text: " 生命恢复24♥",color:"gold",bold:false}]
execute if score @s fashu_heishanyangzhiyong matches 10 run tellraw @a [{selector:"@s"},{text: "\n -6Kmax",color:"red",bold:false},{text: " 同队玩家生命恢复20♥ 自身额外恢复10♥",color:"gold",bold:false}]

scoreboard players set @s fashu_heishanyangzhiyong 0
