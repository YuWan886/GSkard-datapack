execute store result score @s random run random value 1..35
execute if score @s random matches 1..10 run scoreboard players add @s zhuangbeicishu 1
execute if score @s random matches 11..30 run scoreboard players add @s fashucishu 1
execute if score @s random matches 31..35 run scoreboard players add @s shenjicishu 1
scoreboard players set @s random 0
