
execute store result score @s random run random value 26..100
execute if score @s random matches 26..45 run scoreboard players add @s juntuancishu 1
execute if score @s random matches 46..55 run scoreboard players add @s zhuangbeicishu 1
execute if score @s random matches 56..65 run scoreboard players add @s tutengcishu 1
execute if score @s random matches 66..85 run scoreboard players add @s fashucishu 1
execute if score @s random matches 86..90 run scoreboard players add @s shenjicishu 1
execute if score @s random matches 91..100 run scoreboard players add @s xianjincishu 1
scoreboard players set @s random 0