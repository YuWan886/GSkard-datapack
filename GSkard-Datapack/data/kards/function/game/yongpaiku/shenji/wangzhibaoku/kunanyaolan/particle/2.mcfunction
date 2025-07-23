scoreboard players remove @s Particle_distance 1
particle damage_indicator ^ ^-0.2 ^3 0 0 0 0 1 force @a
execute if score @s Particle_distance matches 1.. rotated ~15 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/particle/2
execute if score @s Particle_distance matches 0 run kill @s