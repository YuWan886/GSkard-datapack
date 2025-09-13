
bossbar add minecraft:warden_1 {"text":"监守者",color:"red"}
bossbar add minecraft:warden_2 {"text":"监守者",color:"red"}
bossbar add minecraft:warden_3 {"text":"监守者",color:"red"}

bossbar set minecraft:warden_1 style notched_12
bossbar set minecraft:warden_2 style notched_12
bossbar set minecraft:warden_3 style notched_12

bossbar set minecraft:warden_1 players @a
bossbar set minecraft:warden_2 players @a
bossbar set minecraft:warden_3 players @a

execute store result bossbar minecraft:warden_1 max run data get entity @e[tag=warden_1,limit=1] Health
execute store result bossbar minecraft:warden_2 max run data get entity @e[tag=warden_2,limit=1] Health
execute store result bossbar minecraft:warden_3 max run data get entity @e[tag=warden_3,limit=1] Health
execute store result bossbar minecraft:warden_1 value run data get entity @e[tag=warden_1,limit=1] Health
execute store result bossbar minecraft:warden_2 value run data get entity @e[tag=warden_2,limit=1] Health
execute store result bossbar minecraft:warden_3 value run data get entity @e[tag=warden_3,limit=1] Health
execute if entity @e[tag=warden_1] run bossbar set minecraft:warden_1 visible true
execute if entity @e[tag=warden_2] run bossbar set minecraft:warden_2 visible true
execute if entity @e[tag=warden_3] run bossbar set minecraft:warden_3 visible true