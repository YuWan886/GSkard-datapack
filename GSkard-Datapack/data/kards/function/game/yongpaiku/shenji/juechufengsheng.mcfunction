execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[绝处逢生]",color:"white",hover_event:{action:"show_text",value:"回满自身血量"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players add @s HealBack 200
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_juechufengsheng kardCount
