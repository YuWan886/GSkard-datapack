particle heart ~ ~-1 ~ 1 0.5 1 0.5 30 force @a
playsound minecraft:entity.experience_orb.pickup player @a
execute if entity @s[team=red] run scoreboard players add @e[team=red,distance=..5] HealBack 12
execute if entity @s[team=blue] run scoreboard players add @e[team=blue,distance=..5] HealBack 12
kill @s