particle crit ~ ~ ~ .2 .2 .2 0 10
execute if entity @s[team=red] as @e[distance=..1.75,team=blue] at @s run damage @s 4 player_attack by @p[tag=jingjidunpai,team=red]
execute if entity @s[team=blue] as @e[distance=..1.75,team=red] at @s run damage @s 4 player_attack by @p[tag=jingjidunpai,team=blue]