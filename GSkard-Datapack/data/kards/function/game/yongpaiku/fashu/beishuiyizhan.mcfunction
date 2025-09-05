function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_beishuiyizhan kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
scoreboard players add @s cishu 2

execute if entity @s[team=red] if score #system r_death matches 1.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 1.. run scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 2.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 2.. run scoreboard players add @s cishu 2
execute if entity @s[team=red] if score #system r_death matches 3.. run scoreboard players add @s kardCount 10
execute if entity @s[team=red] if score #system r_death matches 3.. run scoreboard players add @s cishu 2

execute if entity @s[team=blue] if score #system b_death matches 1.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 1.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 2.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 2.. run scoreboard players add @s cishu 2
execute if entity @s[team=blue] if score #system b_death matches 3.. run scoreboard players add @s kardCount 10
execute if entity @s[team=blue] if score #system b_death matches 3.. run scoreboard players add @s cishu 2


