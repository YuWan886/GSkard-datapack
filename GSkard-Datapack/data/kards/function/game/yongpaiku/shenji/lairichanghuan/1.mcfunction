

function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s damage_jilu += @s lairichanghuan
scoreboard players set @s changhuan 1
scoreboard players add @s changhuan_times 1

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCountmax -= #kard_lairichanghuan kardCountmax
