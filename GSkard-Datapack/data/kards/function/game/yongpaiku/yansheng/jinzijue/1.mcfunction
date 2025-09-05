function kards:game/yongpaiku/use_general/tellraw
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinzijue kardCount

advancement grant @s only kards:advancement/jinzijue/first_use
function kards:game/yongpaiku/yansheng/jinzijue/2
execute if score @s jinzijue matches 7 run advancement grant @s only kards:advancement/jinzijue/banbuxian
execute if score @s jinzijue matches 10 run advancement grant @s only kards:advancement/jinzijue/woduzidujie
