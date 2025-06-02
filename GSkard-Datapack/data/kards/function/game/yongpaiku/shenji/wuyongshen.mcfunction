execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无用]",color:"white",hover_event:{action:"show_text",value:"没有作用"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
item replace entity @s weapon.offhand with air

scoreboard players operation @s kardCount -= #kard_wuyongshen kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1