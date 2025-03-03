execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[时空崩塌]",color:"white",hover_event:{action:"show_text",value:"清除双方所有非玩家生物"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
kill @e[type=!player,type=!armor_stand]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1