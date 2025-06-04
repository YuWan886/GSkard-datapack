tag @s add lightning_bolt

execute if entity @s[team=red] run scoreboard players add @e[team=blue,distance=..3.2] XuanYun 20
execute if entity @s[team=blue] run scoreboard players add @e[team=red,distance=..3.2] XuanYun 20
execute if entity @s[team=red] run tag @e[team=blue,distance=..3.2] add XuanYun
execute if entity @s[team=blue] run tag @e[team=red,distance=..3.2] add XuanYun

execute if entity @s[team=red] as @e[team=blue,distance=..3.2] run damage @s 12 lightning_bolt by @p[tag=lightning_bolt,team=red]
execute if entity @s[team=blue] as @e[team=red,distance=..3.2] run damage @s 12 lightning_bolt by @p[tag=lightning_bolt,team=blue]
execute if entity @s[team=red] as @e[team=red,distance=..3.2] at @s run particle enchanted_hit ~ ~1.5 ~ 0.3 0.2 0.3 0 30 force @a
execute if entity @s[team=blue] as @e[team=blue,distance=..3.2] at @s run particle enchanted_hit ~ ~1.5 ~ 0.3 0.2 0.3 0 30 force @a


gamerule drowningDamage false
summon minecraft:lightning_bolt ~ ~ ~

tag @s remove lightning_bolt
scoreboard players set @s fengbaozhanchui_lightning_bolt 300
schedule function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/4 1.5s replace