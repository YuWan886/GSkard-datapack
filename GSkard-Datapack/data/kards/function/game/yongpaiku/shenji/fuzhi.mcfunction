execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[复制]",color:"white",hover_event:{action:"show_text","value":{text: "复制物品栏第一格物品"}}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand from entity @s container.0
scoreboard players operation @s kardCount -= #kard_fuzhi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1