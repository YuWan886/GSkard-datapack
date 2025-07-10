execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[以智取胜]",color:"dark_purple",hover_event:{action:"show_text",value:"抽1张装备牌和军团牌"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_yizhiqusheng kardCount

scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

#红
scoreboard players add @s zhuangbeicishu 1
scoreboard players add @s juntuancishu 1

