execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[重铸]",color:"dark_purple",hover_event:{action:"show_text",value:"将你所有的装备牌回收 每回收1张装备牌则抽一张牌"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_chongzhu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air



execute store result score @s ronghui_zhuangbei run clear @s minecraft:music_disc_13 0
clear @s minecraft:music_disc_13
scoreboard players operation @s cishu = @s ronghui_zhuangbei
tellraw @a [{text: "装备牌回收数:",color:"dark_red",bold:false},{score:{objective:"ronghui_zhuangbei",name:"@s"},color:"green",bold:false}]
scoreboard players set @s ronghui_zhuangbei 0

