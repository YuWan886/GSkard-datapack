
scoreboard players remove @s tutengjinji 1
tag @s add tutengjinji_temp
execute if entity @s[team=red] as @e[team=blue] run damage @s 2 magic by @p[tag=tutengjinji_temp,team=red]
execute if entity @s[team=blue] as @e[team=red] run damage @s 2 magic by @p[tag=tutengjinji_temp,team=blue]
tag @s remove tutengjinji_temp

execute if score @s tutengjinji matches 1.. run function kards:game/yongpaiku/fashu/tutengjingji/2