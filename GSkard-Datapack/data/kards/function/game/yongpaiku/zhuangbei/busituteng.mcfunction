

function kards:game/yongpaiku/use_general/kard_general

execute store result score @s random_busituteng run random value 1..6
execute if score @s random_busituteng matches 1 run function kards:game/paiku/yansheng/busituteng/zibao
execute if score @s random_busituteng matches 2 run function kards:game/paiku/yansheng/busituteng/baonu
execute if score @s random_busituteng matches 3 run function kards:game/paiku/yansheng/busituteng/dongjie
execute if score @s random_busituteng matches 4 run function kards:game/paiku/yansheng/busituteng/shengming
execute if score @s random_busituteng matches 5 run function kards:game/paiku/yansheng/busituteng/hundun
execute if score @s random_busituteng matches 6 run function kards:game/paiku/yansheng/busituteng/huoyan
scoreboard players set @s random_busituteng 0
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_busituteng kardCount

