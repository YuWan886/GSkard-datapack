#自爆
execute as @a[tag=zibaotuteng] at @s as @e[distance=..5,tag=!zibaotuteng] run damage @s 70 kards:zibao by @p[tag=zibaotuteng]
effect clear @a[tag=zibaotuteng]
execute as @a[tag=zibaotuteng] run damage @s 10 kards:zibao
tag @a[tag=zibaotuteng] remove zibaotuteng
#生命
effect give @a[tag=shengmingtuteng] minecraft:regeneration 60 1 true
effect give @a[tag=shengmingtuteng] minecraft:instant_health 1 2 true
effect give @a[tag=shengmingtuteng] instant_health 1 3 true
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
#冰冻
effect give @a[tag=bingdongtuteng] absorption 60 4 true
execute at @a[tag=bingdongtuteng,team=red] run scoreboard players add @e[team=blue,distance=..5] DongJie 200
execute at @a[tag=bingdongtuteng,team=blue] run scoreboard players add @e[team=red,distance=..5] DongJie 200
execute at @a[tag=bingdongtuteng] run playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 100 0
execute at @a[tag=bingdongtuteng,team=red] run tag @e[team=blue,distance=..5] add DongJie
execute at @a[tag=bingdongtuteng,team=blue] run tag @e[team=red,distance=..5] add DongJie

scoreboard players remove @e[tag=DongJie,scores={DongJie=1..}] DongJie 1
effect give @e[tag=DongJie,scores={DongJie=1..}] slowness 1 100 true
effect give @e[tag=DongJie,scores={DongJie=1..}] weakness 1 128 true
execute as @a[tag=DongJie,scores={DongJie=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-3 -100 add_value
execute as @a[tag=DongJie,scores={DongJie=1..}] run effect clear @s jump_boost
title @a[tag=DongJie,scores={DongJie=1..}] times 0t 1s 0t
title @a[tag=DongJie,scores={DongJie=1..}] title {text: "冻结中...",color:"aqua",bold:true}
execute as @a[tag=DongJie,scores={DongJie=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-3
effect clear @e[tag=DongJie,scores={DongJie=0}] slowness
effect clear @e[tag=DongJie,scores={DongJie=0}] weakness
title @a[tag=DongJie,scores={DongJie=0}] title {text: ""}
tag @e[tag=DongJie,scores={DongJie=0}] remove DongJie
tag @a[tag=bingdongtuteng] remove bingdongtuteng
#火焰
scoreboard players add @e[tag=fire] firedamage 1
title @a[tag=fire] actionbar {text: "你被点燃了",color:"red"}
effect give @a[tag=huoyantuteng] absorption 60 4 true
execute as @e[scores={firedamage=5}] run damage @s 1.5 kards:huoyantuteng
scoreboard players set @e[scores={firedamage=10..}] firedamage 0
scoreboard players add @a[tag=fire] fire 1
scoreboard players set @a[scores={fire=300}] fire 0
tag @a[scores={fire=0}] remove fire
tag @a[tag=huoyantuteng] remove huoyantuteng