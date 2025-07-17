execute on owner run tag @s add kunanhuashen_damage

execute if entity @s[team=red] as @e[distance=..3,team=blue,tag=!spectator,limit=3,sort=random] run damage @s 2 magic by @n[tag=kunanhuashen_damage]
execute if entity @s[team=blue] as @e[distance=..3,team=red,tag=!spectator,limit=3,sort=random] run damage @s 2 magic by @n[tag=kunanhuashen_damage]

execute on owner run tag @s remove kunanhuashen_damage
scoreboard players set @s kunanhuashen_attack_time 0