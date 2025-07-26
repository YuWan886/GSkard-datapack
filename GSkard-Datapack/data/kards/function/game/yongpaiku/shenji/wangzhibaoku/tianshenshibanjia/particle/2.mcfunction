
scoreboard players remove @s Particle_distance 1
particle minecraft:trial_spawner_detection ^ ^-0.2 ^4 0 0 0 0 4 force @a
execute if score @s Particle_distance matches 1.. rotated ~7.5 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/particle/2
execute if score @s Particle_distance matches 0 run kill @s