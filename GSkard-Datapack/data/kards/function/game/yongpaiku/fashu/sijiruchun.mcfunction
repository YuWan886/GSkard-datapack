function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_sijiruchun kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
tag @s add K

execute if entity @s[team=red] run scoreboard players add @a[team=red,tag=!K] kardCount 4
execute if entity @s[team=red] store result score #temp temp if entity @a[team=red,tag=!K,gamemode=adventure]

execute if entity @s[team=blue] run scoreboard players add @a[team=blue,tag=!K] kardCount 4
execute if entity @s[team=blue] store result score #temp temp if entity @a[team=blue,tag=!K,gamemode=adventure]
tag @s remove K

scoreboard players add @s cishu 2

execute if score #temp temp matches ..2 run scoreboard players add @s kardCount 4
scoreboard players reset #temp