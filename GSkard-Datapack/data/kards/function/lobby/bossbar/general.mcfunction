execute store result score #system Ready_Num if entity @a[tag=Ready]

bossbar set minecraft:start_game players @a

function kards:lobby/bossbar/name

execute if score #system Ready_Num matches 0 run bossbar set minecraft:start_game max 100
execute if score #system Ready_Num matches 0 run bossbar set minecraft:start_game value 100
execute if score #system Ready_Num matches 1 run bossbar set minecraft:start_game max 2

execute if score #system Ready_Num matches 1.. store result bossbar minecraft:start_game value if entity @a[tag=Ready]
execute if score #system Ready_Num matches 2.. store result bossbar minecraft:start_game max if entity @a[tag=Ready]