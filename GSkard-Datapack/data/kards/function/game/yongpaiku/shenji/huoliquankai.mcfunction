execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[火力全开]",color:"white",hover_event:{action:"show_text",value:"获得30点使用点数"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players add @s kardCount 30
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_huoliquankai kardCount
