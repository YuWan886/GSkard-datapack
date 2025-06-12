attribute @s knockback_resistance base reset

playsound item.mace.smash_ground_heavy player @a[distance=..20] ~ ~ ~ 100 1
particle minecraft:block{block_state: "minecraft:stone"} ~ ~0.3 ~ 2.5 0.0 2.5 0 350 force @a

execute if entity @s[team=red] as @e[team=blue,distance=..5] run damage @s 30 mace_smash by @p[tag=fengbaozhanchui_xunengzhongji,team=red]
execute if entity @s[team=blue] as @e[team=red,distance=..5] run damage @s 30 mace_smash by @p[tag=fengbaozhanchui_xunengzhongji,team=blue]

execute if entity @s[team=red] run scoreboard players add @e[team=blue,distance=..5] XuanYun 50
execute if entity @s[team=blue] run scoreboard players add @e[team=red,distance=..5] XuanYun 50
execute if entity @s[team=red] run tag @e[team=blue,distance=..5] add XuanYun
execute if entity @s[team=blue] run tag @e[team=red,distance=..5] add XuanYun


tag @s remove fengbaozhanchui_xunengzhongji
attribute @s safe_fall_distance base reset