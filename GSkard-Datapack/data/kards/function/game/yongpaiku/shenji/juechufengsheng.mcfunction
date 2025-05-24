execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.shenji.juechufengsheng.1",color:"white",hover_event:{action:"show_text","value":"回满自身血量"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
effect give @s instant_health 5 100 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_juechufengsheng kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1