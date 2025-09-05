effect give @e[scores={HealBack=1..}] minecraft:regeneration 1 5 true
effect clear @e[scores={HealBack=0}] regeneration
scoreboard players reset @e[scores={HealBack=0}] HealBack
scoreboard players remove @e[scores={HealBack=1..}] HealBack 1