

function kards:game/yongpaiku/use_general/kard_general

tag @s add zhongshang_damage

execute if entity @s[team=red] as @a[gamemode=adventure,team=blue] run damage @s 6 kards:zhongshang by @p[team=red,tag=zhongshang_damage]
execute if entity @s[team=red] run scoreboard players set @a[gamemode=adventure,team=blue] ZhongShang_Round 2

execute if entity @s[team=blue] as @a[gamemode=adventure,team=red] run damage @s 6 kards:zhongshang by @p[team=blue,tag=zhongshang_damage]
execute if entity @s[team=blue] run scoreboard players set @a[gamemode=adventure,team=red] ZhongShang_Round 2

tag @s remove zhongshang_damage
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhongshang kardCount

