execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[虚空回响]",color:"white",hover_event:{action:"show_text",value:"本回合内 你每用过一张基础牌 抽一张牌"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
scoreboard players add @s xukonghuixiang 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 3
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1