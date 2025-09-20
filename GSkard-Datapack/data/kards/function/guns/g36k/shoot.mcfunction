scoreboard players reset @s G36K_Use
scoreboard players set @s G36K_Ray 300

tag @s add G36K_Shoot

playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 100 2
execute at @s anchored eyes positioned ^ ^ ^0.5 run function kards:guns/g36k/_