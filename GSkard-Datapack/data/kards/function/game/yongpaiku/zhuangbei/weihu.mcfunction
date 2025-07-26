

function kards:game/yongpaiku/use_general/kard_general

scoreboard players add @s killed_entity 10

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_weihu kardCount
