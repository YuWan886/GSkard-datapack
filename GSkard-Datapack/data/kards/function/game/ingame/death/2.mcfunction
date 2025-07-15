gamemode spectator @s
scoreboard players set @s death 0
execute if entity @s[team=red] run scoreboard players add #system r_death 1
execute if entity @s[team=blue] run scoreboard players add #system b_death 1
tp @s @r[gamemode=adventure]

tag @s remove Fire
tag @s remove DongJie
tag @s remove XuanYun
tag @s remove XuanZhuan

scoreboard players reset @s Fire
scoreboard players reset @s DongJie
scoreboard players reset @s XuanYun
scoreboard players reset @s XuanZhuan

execute if entity @e[tag=droll,type=block_display] run advancement grant @s only kards:chengjiu/death_in_chunriying
execute if score @s jinzijue matches 5..9 run advancement grant @s only kards:chengjiu/jinzijue/zhongdaobengcu
