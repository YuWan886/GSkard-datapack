function kards:game/yongpaiku/use_general/kard_general

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chengmo kardCount

execute if entity @s[team=red] run scoreboard players set @a[team=blue] chengmo 2
execute if entity @s[team=blue] run scoreboard players set @a[team=red] chengmo 2
