tag @s add Damage
execute at @s as @a[tag=!Damage,distance=..5] run damage @s 10 player_attack by @n[tag=Damage]
tag @s remove Damage