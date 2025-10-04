scoreboard players reset @s G36K_Ex_Use
execute unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data={kards:"G36K_Ex"}] run return fail

tag @s add G36K_Ex_Shoot

playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 100 2
execute at @s anchored eyes positioned ^ ^ ^0.5 summon marker rotated as @p[tag=G36K_Ex_Shoot] run function kards:guns/ex_g36k/shoot_