execute as @e[tag=morilailing,tag=!Not_Mount,type=item_display] at @s store result score @s If_Mount_Alive if entity @e[tag=morilailing,type=creeper,distance=..1.75]
execute as @e[tag=morilailing,tag=!Not_Mount,type=item_display] if score @s If_Mount_Alive matches 0 run scoreboard players set @s Mob_Skill_Time 20
execute as @e[tag=morilailing,tag=!Not_Mount,type=item_display] if score @s If_Mount_Alive matches 0 run function kards:game/ingame/mob/morilailing/2

scoreboard players remove @e[tag=morilailing,tag=Not_Mount,type=item_display] Mob_Skill_Time 1

execute as @e[tag=morilailing,tag=Not_Mount,type=item_display] if score @s Mob_Skill_Time matches 0 at @s run function kards:game/ingame/mob/morilailing/3