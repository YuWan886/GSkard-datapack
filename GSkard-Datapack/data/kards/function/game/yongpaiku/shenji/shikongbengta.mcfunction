function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance

execute if entity @s[team=red] if entity @e[team=red,type=warden] run advancement grant @a[team=blue] only kards:advancement/zhenshiyouqudecelue
execute if entity @s[team=blue] if entity @e[team=blue,type=warden] run advancement grant @a[team=red] only kards:advancement/zhenshiyouqudecelue

kill @e[type=!player,type=!marker,type=!#kards:display,type=!creaking]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shikongbengta kardCount
