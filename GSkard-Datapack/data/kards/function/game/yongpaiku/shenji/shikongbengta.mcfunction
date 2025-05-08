execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.shenji.shikongbengta.1",color:"white",hover_event:{action:"show_text","value":"清除双方所有非玩家生物"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
kill @e[type=!player,type=!armor_stand,type=!#kards:display]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1