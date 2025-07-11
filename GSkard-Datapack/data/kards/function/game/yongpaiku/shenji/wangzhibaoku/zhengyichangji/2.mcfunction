execute if score @s used_zhengyichangji matches 0 run tag @s add used_zhengyichangji
execute if score @s used_zhengyichangji matches 0 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 0
execute if score @s[team=red] used_zhengyichangji matches 0 at @s as @e[team=blue,distance=..5] run damage @s 7 kards:chuanci by @p[team=red,tag=zhengyichangji]
execute if score @s[team=blue] used_zhengyichangji matches 0 at @s as @e[team=red,distance=..5] run damage @s 7 kards:chuanci by @p[team=blue,tag=zhengyichangji]

execute if score @s[team=red] used_zhengyichangji matches 0 at @s as @e[team=blue,distance=..5] at @s run particle item_cobweb ~ ~1 ~ 0 0 0 0 25
execute if score @s[team=blue] used_zhengyichangji matches 0 at @s as @e[team=red,distance=..5] at @s run particle item_cobweb ~ ~1 ~ 0 0 0 0 25

execute if score @s used_zhengyichangji matches 0 run scoreboard players set @s used_zhengyichangji 1
advancement revoke @s only kards:shenqi/zhengyichangji/2