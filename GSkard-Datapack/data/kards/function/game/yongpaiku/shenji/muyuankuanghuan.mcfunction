function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance
scoreboard players set @s muyuankuanghuan 1
item replace entity @s weapon.offhand with air
scoreboard players add @s kardCountmax 5
scoreboard players operation @s kardCount -= #kard_muyuankuanghuan kardCount
