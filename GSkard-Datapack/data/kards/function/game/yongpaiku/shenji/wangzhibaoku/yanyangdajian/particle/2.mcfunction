scoreboard players remove @s Particle_distance 1
particle minecraft:dripping_lava ^ ^0.2 ^5 0 0.3 0 1 1 force @a
execute if score @s Particle_distance matches 1.. rotated ~7.5 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/particle/2
execute if score @s Particle_distance matches 0 run kill @s