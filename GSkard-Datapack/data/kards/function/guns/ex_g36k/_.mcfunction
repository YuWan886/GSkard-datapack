scoreboard players remove @s G36K_Ex_Ray 1
scoreboard players add @s G36K_Ex_particle 1

tp @s ^ ^ ^0.25
execute if score @s G36K_Ex_particle matches 1 run particle note ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s G36K_Ex_particle matches 5 run scoreboard players set @s G36K_Ex_particle 0
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ air run function kards:guns/ex_g36k/rotate/_

execute if entity @e[dy=2,tag=!G36K_Ex_Shoot,type=!#kards:display] run tag @e[dy=2,tag=!G36K_Ex_Shoot,type=!#kards:display] add G36K_Ex_Damage

execute if score @s G36K_Ex_Ray matches 0 as @e[tag=G36K_Ex_Damage] run damage @s 5 arrow by @p[tag=G36K_Ex_Shoot]
execute if score @s G36K_Ex_Ray matches 0 if entity @e[tag=G36K_Ex_Damage] run playsound entity.arrow.hit_player player @a[tag=G36K_Ex_Shoot] ~ ~ ~ 100 2
execute if score @s G36K_Ex_Ray matches 0 at @e[tag=G36K_Ex_Damage] run particle mycelium ~ ~2 ~ 0 0 0 1 20 force @a
execute if score @s G36K_Ex_Ray matches 0 run tag @p remove G36K_Ex_Shoot
execute if score @s G36K_Ex_Ray matches 0 run tag @e[tag=G36K_Ex_Damage] remove G36K_Ex_Damage
execute if score @s G36K_Ex_Ray matches 0 run kill @s

execute if score @s G36K_Ex_Ray matches 1.. at @s run function kards:guns/ex_g36k/_

