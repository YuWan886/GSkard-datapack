#自爆
execute as @a[tag=zibaotuteng] at @s as @e[distance=..5,tag=!zibaotuteng] run damage @s 70 kards:zibao by @n[tag=zibaotuteng]
effect clear @a[tag=zibaotuteng]
execute as @a[tag=zibaotuteng] run damage @s 10 kards:zibao
tag @a[tag=zibaotuteng] remove zibaotuteng
#生命
effect give @a[tag=shengmingtuteng] minecraft:regeneration 60 1 true
scoreboard players add @a[tag=shengmingtuteng] HealBack 40

effect give @a[tag=shengmingtuteng] absorption 60 9 true
tag @a[tag=shengmingtuteng] remove shengmingtuteng
#暴怒
effect give @a[tag=baonututeng] absorption 60 4 true
effect give @a[tag=baonututeng] speed 30 3 true
effect give @a[tag=baonututeng] saturation 30 4 true
effect give @a[tag=baonututeng] minecraft:resistance 10 4 true
tag @a[tag=baonututeng] remove baonututeng
#混乱
effect give @a[tag=hunluantuteng] absorption 60 4 true
effect give @a[tag=wudi] resistance 10 4 true
tag @a[tag=hunluantuteng] remove hunluantuteng
tag @a[tag=wudi] remove wudi
