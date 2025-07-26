
scoreboard players remove @s Particle_distance 1
particle snowflake ^ ^0.2 ^6 0.35 0 0.35 0 3 force @a
execute if score @s Particle_distance matches 1.. rotated ~15 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/lindongzhikai/particle/2
execute if score @s Particle_distance matches 0 run kill @s