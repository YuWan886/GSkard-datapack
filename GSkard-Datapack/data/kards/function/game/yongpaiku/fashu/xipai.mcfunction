



function kards:game/yongpaiku/xianjing/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_xipai kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute store result score @s kapaishuliang run clear @s #minecraft:creeper_drop_music_discs 0
clear @s #minecraft:creeper_drop_music_discs 2
execute if score @s kapaishuliang matches 1 run scoreboard players add @s cishu 1
execute if score @s kapaishuliang matches 2.. run scoreboard players add @s cishu 2

scoreboard players set @s kapaishuliang 0
