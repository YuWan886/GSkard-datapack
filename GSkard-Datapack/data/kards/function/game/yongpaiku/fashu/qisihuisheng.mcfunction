execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[起死回生]",color:"dark_purple",hover_event:{action:"show_text",value:"回复16♥ 获得60s10♥额外生命"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_qisihuisheng kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


scoreboard players add @s HealBack 32
effect give @s absorption 60 4 true

