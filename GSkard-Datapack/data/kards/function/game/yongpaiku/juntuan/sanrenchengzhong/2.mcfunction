# 每10秒生成小史莱姆
execute if entity @s[team=red] at @s run summon magma_cube ~ ~ ~ {Team:red,Size:1}
execute if entity @s[team=blue] at @s run summon magma_cube ~ ~ ~ {Team:blue,Size:1}
scoreboard players set @s sanrenchengzhong 0