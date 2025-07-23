scoreboard players remove @s Particle_distance 1
particle enchanted_hit ^ ^0.2 ^5 0 0 0 0.01 1 force @a
execute if score @s Particle_distance matches 1.. rotated ~7.5 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyichangji/particle/2
execute if score @s Particle_distance matches 0 run kill @s