execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[虚空回响]",color:"white",hover_event:{action:"show_text",value:"本回合内 你每用过一张基础牌 抽一张牌"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players add @s xukonghuixiang 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xukonghuixiang kardCount
