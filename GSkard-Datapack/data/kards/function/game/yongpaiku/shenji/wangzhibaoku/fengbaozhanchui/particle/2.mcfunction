scoreboard players remove @s Particle_distance 1
particle minecraft:block_crumble{block_state: "minecraft:light_gray_concrete"} ^ ^0.2 ^5 0.25 0.1 0.25 0 10 force @a
execute if score @s Particle_distance matches 1.. rotated ~15 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/particle/2
execute if score @s Particle_distance matches 0 run kill @s