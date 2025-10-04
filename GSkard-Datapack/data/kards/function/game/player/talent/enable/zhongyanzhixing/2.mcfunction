scoreboard players remove @s Talent_zhongyanzhixing 1

execute as @s[team=red] run damage @r[gamemode=adventure,team=blue] 1 kards:zhongyanzhixing
execute as @s[team=blue] run damage @r[gamemode=adventure,team=red] 1 kards:zhongyanzhixing

execute if score @s Talent_zhongyanzhixing matches 1.. run function kards:game/player/talent/enable/zhongyanzhixing/2