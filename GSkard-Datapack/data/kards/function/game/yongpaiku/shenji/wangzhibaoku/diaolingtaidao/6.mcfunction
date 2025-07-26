
advancement revoke @s only kards:shenqi/diaolingtaidao/2

playsound entity.wither_skeleton.step player @a[distance=..20] ~ ~ ~ 100 0
playsound entity.evoker.prepare_summon player @a[distance=..20] ~ ~ ~ 100 1
summon block_display ~ ~ ~ {block_state:{Name:"wither_rose"},Motion:[0,0.8,0],Glowing:1b,Invulnerable:1b,billboard:vertical,glow_color_override:-1,Tags:["diaolingtaidao_wither_rose","diaolingtaidao_wither_rose_start"],start_interpolation:0,interpolation_duration:40}

#data modify entity @n[tag=diaolingtaidao_wither_rose_start,team=] start_interpolation set value 0
#data modify entity @n[tag=diaolingtaidao_wither_rose_start,team=] interpolation_duration set value 40
data modify entity @n[tag=diaolingtaidao_wither_rose_start,team=] transformation.translation set value [0,2.5,0]
scoreboard players set @n[tag=diaolingtaidao_wither_rose_start,team=] diaolingtaidao_wither_rose 200

execute if entity @s[team=red] run team join red @n[tag=diaolingtaidao_wither_rose_start,team=]
execute if entity @s[team=blue] run team join blue @n[tag=diaolingtaidao_wither_rose_start,team=]

tag @n[tag=diaolingtaidao_wither_rose_start] remove diaolingtaidao_wither_rose_start
