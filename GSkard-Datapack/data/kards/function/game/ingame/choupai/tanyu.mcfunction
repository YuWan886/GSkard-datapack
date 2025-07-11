execute store result score @s random run random value 1..100
execute if score @s random matches 1..35 run scoreboard players add @s jibencishu 1
execute if score @s random matches 36..60 run scoreboard players add @s juntuancishu 1
execute if score @s random matches 61..75 run scoreboard players add @s tutengcishu 1
execute if score @s random matches 76..95 run scoreboard players add @s xianjincishu 1
execute if score @s random matches 96..100 run scoreboard players add @s shenjicishu 1
scoreboard players set @s random 0
scoreboard players remove @s tanyumohe_cishu 1

