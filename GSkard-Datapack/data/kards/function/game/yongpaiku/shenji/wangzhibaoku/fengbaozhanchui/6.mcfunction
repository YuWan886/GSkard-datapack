attribute @s knockback_resistance base reset

playsound item.mace.smash_ground_heavy player @a[distance=..20] ~ ~ ~ 100 1

execute if entity @s[team=red] as @e[team=blue,distance=..5] run damage @s 20 mace_smash by @p[tag=fengbaozhanchui_xunengzhongji,team=red]
execute if entity @s[team=blue] as @e[team=red,distance=..5] run damage @s 20 mace_smash by @p[tag=fengbaozhanchui_xunengzhongji,team=blue]

execute if entity @s[team=red] run scoreboard players add @e[team=blue,distance=..5] XuanYun 40
execute if entity @s[team=blue] run scoreboard players add @e[team=red,distance=..5] XuanYun 40
execute if entity @s[team=red] run tag @e[team=blue,distance=..5] add XuanYun
execute if entity @s[team=blue] run tag @e[team=red,distance=..5] add XuanYun

tag @s remove fengbaozhanchui_xunengzhongji
attribute @s safe_fall_distance base reset