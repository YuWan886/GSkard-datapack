execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[好高骛远]",color:"white",hover_event:{action:"show_text",value:"弃掉所有的牌 抽数量+2的牌"}}]
function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
execute store result score @s haogaowuyuan run clear @s #minecraft:creeper_drop_music_discs 0
clear @s #minecraft:creeper_drop_music_discs
scoreboard players operation @s cishu += @s haogaowuyuan
scoreboard players add @s cishu 2
scoreboard players set @s haogaowuyuan 0

scoreboard players operation @s kardCount -= #kard_haogaowuyuan kardCount
