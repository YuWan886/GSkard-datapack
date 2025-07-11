gamerule drowningDamage false
summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 10 1
scoreboard players add @s XuanYun 10
execute if entity @s[team=red] as @e[team=red,distance=..2.5] run damage @s 3 kards:chuanci by @p[tag=zhengyichangji,team=blue]
execute if entity @s[team=blue] as @e[team=blue,distance=..2.5] run damage @s 3 kards:chuanci by @p[tag=zhengyichangji,team=red]
execute if entity @s[team=red] as @e[team=red,distance=..2.5] at @s run particle enchanted_hit ~ ~1.5 ~ 0.3 0.2 0.3 0 30 force @a
execute if entity @s[team=blue] as @e[team=blue,distance=..2.5] at @s run particle enchanted_hit ~ ~1.5 ~ 0.3 0.2 0.3 0 30 force @a
tag @s add XuanYun
schedule function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyichangji/4 1.5s replace
