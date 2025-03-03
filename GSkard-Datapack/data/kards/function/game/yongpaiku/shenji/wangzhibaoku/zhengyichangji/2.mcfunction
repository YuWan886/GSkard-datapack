execute if score @s used_zhengyichangji matches 0 run tag @s add used_zhengyichangji
execute if score @s used_zhengyichangji matches 0 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 0
execute if score @s[team=red] used_zhengyichangji matches 0 at @s as @e[team=blue,distance=..4] run damage @s 8 kards:chuanci by @p[team=red,tag=zhengyichangji]
execute if score @s[team=blue] used_zhengyichangji matches 0 at @s as @e[team=red,distance=..4] run damage @s 8 kards:chuanci by @p[team=blue,tag=zhengyichangji]
advancement revoke @s only kards:shenqi/zhengyichangji/2