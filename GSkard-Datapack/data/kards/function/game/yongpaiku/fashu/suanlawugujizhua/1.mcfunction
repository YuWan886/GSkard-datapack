execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[酸辣无骨鸡爪]",color:"dark_purple",hover_event:{action:"show_text",value:"好吃的"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_suanlawugujizhua kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
function kards:game/paiku/yansheng/suanlawugujizhua/1
execute store result score @s random_suanlawugujizhua run random value 1..100
execute if score @s random_suanlawugujizhua matches 1..10 run function kards:game/paiku/yansheng/suanlawugujizhua/2
