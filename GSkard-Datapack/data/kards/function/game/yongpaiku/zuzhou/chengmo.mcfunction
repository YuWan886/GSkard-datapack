function kards:game/yongpaiku/use_general/kard_general



execute if entity @s[team=red] run scoreboard players set @e[tag=b_dw,limit=1] chengmo 2
execute if entity @s[team=blue] run scoreboard players set @e[tag=r_dw,limit=1] chengmo 2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chengmo kardCount
