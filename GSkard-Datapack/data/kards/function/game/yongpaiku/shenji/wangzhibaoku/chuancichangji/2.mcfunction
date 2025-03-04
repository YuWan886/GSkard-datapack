execute if score @s used_chuancichangji matches 0 run tag @s add used_chuancichangji
execute if score @s used_chuancichangji matches 0 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 0

execute if score @s[team=red] used_chuancichangji matches 0 at @s as @e[team=blue,distance=..6] run damage @s 14 kards:chuanci by @p[team=red,tag=chuancichangji]
execute if score @s[team=blue] used_chuancichangji matches 0 at @s as @e[team=red,distance=..6] run damage @s 14 kards:chuanci by @p[team=blue,tag=chuancichangji]

advancement revoke @s only kards:shenqi/chuancichangji/2