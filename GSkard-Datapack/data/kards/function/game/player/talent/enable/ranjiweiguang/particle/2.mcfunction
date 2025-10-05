
scoreboard players remove @s Particle_distance 1
particle end_rod ^ ^0.2 ^2.5 0.15 0 0.15 0 3 force @a
execute if score @s Particle_distance matches 1.. rotated ~15 ~ run function kards:game/player/talent/enable/ranjiweiguang/particle/2
execute if score @s Particle_distance matches 0 run kill @s