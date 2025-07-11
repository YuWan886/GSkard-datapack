# 每10秒生成小史莱姆
execute if entity @s[team=red] at @s run summon magma_cube ~ ~ ~ {Team:red,Size:1,Motion:[0,1,0]}
execute if entity @s[team=blue] at @s run summon magma_cube ~ ~ ~ {Team:blue,Size:1,Motion:[0,1,0]}
execute at @s run playsound minecraft:bowomp player @a[distance=..20] ~ ~ ~ 100 1
scoreboard players set @s sanrenchengzhong 0
