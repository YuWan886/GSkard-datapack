execute as @e[tag=xiaoguidangjia,type=text_display] at @s store result score @s If_Mount_Alive if entity @e[tag=xiaoguidangjia,type=zombie,distance=..1.75]
execute as @e[tag=xiaoguidangjia,type=text_display] if score @s If_Mount_Alive matches 0 run kill @s

execute as @e[tag=xiaoguidangjia,type=chicken] at @s store result score @s If_Mount_Alive if entity @e[tag=xiaoguidangjia,type=zombie,distance=..1.75]
execute as @e[tag=xiaoguidangjia,type=chicken] if score @s If_Mount_Alive matches 0 run kill @s
