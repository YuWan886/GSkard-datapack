execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[再来一罐]",color:"light_purple",hover_event:{action:"show_text",value:"获得两个酸辣无骨鸡爪"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zailaiyiguan kardCount


function kards:game/paiku/yansheng/suanlawugujizhua/1
function kards:game/paiku/yansheng/suanlawugujizhua/1
