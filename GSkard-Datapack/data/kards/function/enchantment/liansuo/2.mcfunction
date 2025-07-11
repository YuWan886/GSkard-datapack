particle dust{color: [0.0,0.42,0.42], scale: 0.5} ~ ~0.1 ~
tp @s ^ ^ ^0.25
execute unless entity @e[tag=particle_liansuo_2,distance=..0.25] positioned ^ ^ ^0.25 run function kards:enchantment/liansuo/2
execute if entity @e[tag=particle_liansuo_2,distance=..0.25] run function kards:enchantment/liansuo/stop
