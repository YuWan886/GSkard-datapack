execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.shenji.huoliquankai.1",color:"white",hover_event:{action:"show_text","value":"获得30点使用点数"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
scoreboard players add @s kardCount 30
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1