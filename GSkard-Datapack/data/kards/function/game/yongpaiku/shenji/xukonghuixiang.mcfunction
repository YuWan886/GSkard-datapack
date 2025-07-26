

function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
scoreboard players set @s xukonghuixiang 1
scoreboard players set @s ChaoPin 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xukonghuixiang kardCount
