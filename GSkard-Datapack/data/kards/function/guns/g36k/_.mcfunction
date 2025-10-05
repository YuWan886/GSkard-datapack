scoreboard players remove @s G36K_Ray 1
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a

execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #air run scoreboard players set @s G36K_Ray 0

execute if entity @e[dy=1.5,tag=!G36K_Shoot,type=!#kards:display] run scoreboard players set @s G36K_Ray -1

execute if score @s G36K_Ray matches -1 run damage @n[distance=..3,tag=!G36K_Shoot,type=!#kards:display] 1 arrow by @p[tag=G36K_Shoot]
execute if score @s G36K_Ray matches -1 run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 2
execute if score @s G36K_Ray matches -1 run tag @s remove G36K_Shoot
execute if score @s G36K_Ray matches -1 run particle soul_fire_flame ~ ~ ~ 0 0 0 1 20 force @a
execute if score @s G36K_Ray matches 0 run tag @s remove G36K_Shoot

execute if score @s G36K_Ray matches 1.. positioned ^ ^ ^0.25 run function kards:guns/g36k/_
