function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance
item replace entity @s weapon.offhand with air
execute store result score @s haogaowuyuan run clear @s #minecraft:creeper_drop_music_discs 0
clear @s #minecraft:creeper_drop_music_discs
scoreboard players operation @s cishu += @s haogaowuyuan
scoreboard players add @s cishu 2
scoreboard players set @s haogaowuyuan 0

scoreboard players operation @s kardCount -= #kard_haogaowuyuan kardCount
