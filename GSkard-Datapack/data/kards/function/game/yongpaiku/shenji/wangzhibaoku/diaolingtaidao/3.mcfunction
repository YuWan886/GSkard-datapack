tag @s add diaolingtaidao_damage
execute if entity @s[team=red] as @e[tag=diaolingtaidao_hurt,team=blue,scores={diaolingtaidao_damage_add=1..}] run damage @s 15 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=red]
execute if entity @s[team=blue] as @e[tag=diaolingtaidao_hurt,team=red,scores={diaolingtaidao_damage_add=1..}] run damage @s 15 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=blue]
execute if entity @s[team=red] as @e[tag=diaolingtaidao_hurt,team=blue] run damage @s 5 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=red]
execute if entity @s[team=blue] as @e[tag=diaolingtaidao_hurt,team=red] run damage @s 5 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=blue]
scoreboard players set @e[tag=diaolingtaidao_hurt] diaolingtaidao_damage_add 100
effect give @e[tag=diaolingtaidao_hurt] wither 2 2 true
tag @e[tag=diaolingtaidao_hurt] remove diaolingtaidao_hurt
tag @s remove diaolingtaidao_damage
