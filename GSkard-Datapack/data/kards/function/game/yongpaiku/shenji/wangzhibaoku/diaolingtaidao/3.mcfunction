tag @s add diaolingtaidao_damage
execute if entity @s[team=red] as @e[tag=diaolingtaidao_hurt,team=blue,scores={diaolingtaidao_damage_add=1..}] run damage @s 15 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=red]
execute if entity @s[team=blue] as @e[tag=diaolingtaidao_hurt,team=red,scores={diaolingtaidao_damage_add=1..}] run damage @s 15 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=blue]

execute if entity @s[team=red,tag=minghunzhaojia] run tag @e[tag=diaolingtaidao_hurt,team=blue,scores={diaolingtaidao_damage_add=1..},distance=0.01..] add PoJia
execute if entity @s[team=red,tag=minghunzhaojia] run scoreboard players set @e[tag=diaolingtaidao_hurt,team=blue,scores={diaolingtaidao_damage_add=1..},distance=0.01..] PoJia 40
execute if entity @s[team=blue,tag=minghunzhaojia] run tag @e[tag=diaolingtaidao_hurt,team=red,scores={diaolingtaidao_damage_add=1..},distance=0.01..] add PoJia
execute if entity @s[team=blue,tag=minghunzhaojia] run scoreboard players set @e[tag=diaolingtaidao_hurt,team=red,scores={diaolingtaidao_damage_add=1..},distance=0.01..] PoJia 40

execute if entity @s[team=red] as @e[tag=diaolingtaidao_hurt,team=blue] run damage @s 5 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=red]
execute if entity @s[team=blue] as @e[tag=diaolingtaidao_hurt,team=red] run damage @s 5 kards:diaolingtaidao by @p[tag=diaolingtaidao_damage,team=blue]
scoreboard players set @e[tag=diaolingtaidao_hurt] diaolingtaidao_damage_add 100

execute if entity @s[tag=minghunzhaojia,team=red] run effect give @e[tag=diaolingtaidao_hurt,team=blue] wither 5 4 true
execute if entity @s[tag=minghunzhaojia,team=blue] run effect give @e[tag=diaolingtaidao_hurt,team=red] wither 5 4 true

execute store result score @s[tag=minghunzhaojia] HealBack_Wait if entity @e[tag=diaolingtaidao_hurt]
scoreboard players operation @s HealBack += @s HealBack_Wait
scoreboard players operation @s HealBack += @s HealBack_Wait
scoreboard players operation @s HealBack += @s HealBack_Wait
scoreboard players operation @s HealBack += @s HealBack_Wait
scoreboard players reset @s HealBack_Wait

tag @e[tag=diaolingtaidao_hurt] remove diaolingtaidao_hurt
tag @s remove diaolingtaidao_damage