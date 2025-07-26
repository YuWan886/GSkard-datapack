
attribute @s knockback_resistance base reset

playsound item.mace.smash_ground_heavy player @a[distance=..20] ~ ~ ~ 100 1
#particle minecraft:block{block_state: "minecraft:stone"} ~ ~0.3 ~ 2.5 0.0 2.5 0 350 force @a

execute if entity @s[team=red] as @e[team=blue,distance=..5,gamemode=adventure] run damage @s 30 mace_smash by @p[tag=fengbaozhanchui_xunengzhongji,team=red]
execute if entity @s[team=blue] as @e[team=red,distance=..5,gamemode=adventure] run damage @s 30 mace_smash by @p[tag=fengbaozhanchui_xunengzhongji,team=blue]

execute if entity @s[team=red] run scoreboard players add @e[team=blue,distance=..5,gamemode=adventure] XuanYun 50
execute if entity @s[team=blue] run scoreboard players add @e[team=red,distance=..5,gamemode=adventure] XuanYun 50
execute if entity @s[team=red] run tag @e[team=blue,distance=..5,gamemode=adventure] add XuanYun
execute if entity @s[team=blue] run tag @e[team=red,distance=..5,gamemode=adventure] add XuanYun

execute summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/particle/1

tag @s remove fengbaozhanchui_xunengzhongji
attribute @s safe_fall_distance base reset