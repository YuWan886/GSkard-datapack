scoreboard players add @s HealBack 60

playsound minecraft:tududududu player @a[distance=..20] ~ ~ ~ 100 0
playsound entity.evoker.prepare_summon player @a[distance=..20] ~ ~ ~ 100 1
summon item_display ~ ~ ~ {item:{id:"totem_of_undying"},Motion:[0,0.8,0],Glowing:1b,Invulnerable:1b,billboard:vertical,glow_color_override:-1,Tags:["shengmingtuteng","shengmingtuteng_start"],start_interpolation:0,interpolation_duration:40}

data modify entity @n[tag=shengmingtuteng_start,team=] transformation.translation set value [0,2.5,0]
scoreboard players set @n[tag=shengmingtuteng_start,team=] shengmingtuteng 400

execute if entity @s[team=red] run team join red @n[tag=shengmingtuteng_start,team=]
execute if entity @s[team=blue] run team join blue @n[tag=shengmingtuteng_start,team=]

tag @n[tag=shengmingtuteng_start] remove shengmingtuteng_start

advancement revoke @s only kards:totem/shengming