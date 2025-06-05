tag @s add diaolingtaidao_damage
execute if entity @s[team=red] as @e[tag=diaolingtaidao_hurt,team=blue] run damage @s 10 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=red]
execute if entity @s[team=blue] as @e[tag=diaolingtaidao_hurt,team=red] run damage @s 10 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=blue]
effect give @e[tag=diaolingtaidao_hurt] wither 2 2 true
tag @e[tag=diaolingtaidao_hurt] remove diaolingtaidao_hurt
tag @s remove diaolingtaidao_damage