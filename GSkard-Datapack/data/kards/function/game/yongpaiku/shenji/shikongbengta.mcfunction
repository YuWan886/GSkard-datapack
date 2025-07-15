execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[时空崩塌]",color:"white",hover_event:{action:"show_text",value:"清除双方所有非玩家生物"}}]
function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] if entity @e[team=red,type=warden] run advancement grant @a[team=blue] only kards:chengjiu/zhenshiyouqudecelue
execute if entity @s[team=blue] if entity @e[team=blue,type=warden] run advancement grant @a[team=red] only kards:chengjiu/zhenshiyouqudecelue

kill @e[type=!player,type=!marker,type=!#kards:display,type=!creaking]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shikongbengta kardCount
