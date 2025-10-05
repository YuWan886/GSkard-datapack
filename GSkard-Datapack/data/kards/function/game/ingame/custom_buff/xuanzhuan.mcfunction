scoreboard players remove @a[scores={XuanZhuan=1..}] XuanZhuan 1
execute as @a[scores={XuanZhuan=1..}] at @s run rotate @s ~27.5 ~

tag @a[scores={XuanZhuan=0}] remove XuanZhuan

scoreboard players reset @a[gamemode=spectator] XuanZhuan