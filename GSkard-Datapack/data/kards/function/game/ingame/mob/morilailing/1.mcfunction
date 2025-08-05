execute as @e[tag=creeper,tag=!Not_Mount] at @s store result score @s If_Mount_Alive if entity @e[tag=baozhajuntuan,type=creeper,distance=..1.75]
execute as @e[tag=creeper,tag=!Not_Mount] if score @s If_Mount_Alive matches 0 run scoreboard players set @s Mob_Skill_Time 20
execute as @e[tag=creeper,tag=!Not_Mount] if score @s If_Mount_Alive matches 0 run function kards:game/ingame/mob/baozhajuntuan/2

scoreboard players remove @e[tag=creeper,tag=Not_Mount] Mob_Skill_Time 1

execute as @e[tag=creeper,tag=Not_Mount] if score @s Mob_Skill_Time matches 0 at @s run function kards:game/ingame/mob/baozhajuntuan/3