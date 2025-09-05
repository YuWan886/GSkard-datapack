advancement revoke @s only kards:mob/silingwushi
#获取最大值
execute if entity @s[team=red] store result storage temp Mob_Count.Silingpucong.Max int 5 store result storage temp Mob_Count.Silingwushi int 1 if entity @e[tag=silingwushi,team=blue]
execute if entity @s[team=red] store result score 蓝队 Mob_Count_Silingpucong_Max run data get storage temp Mob_Count.Silingpucong.Max

execute if entity @s[team=blue] store result storage temp Mob_Count.Silingpucong.Max int 5 store result storage temp Mob_Count.Silingwushi int 1 if entity @e[tag=silingwushi,team=red]
execute if entity @s[team=blue] store result score 红队 Mob_Count_Silingpucong_Max run data get storage temp Mob_Count.Silingpucong.Max
#判断数量
execute if entity @s[team=red] store result score 蓝队 Mob_Count_Silingpucong if entity @e[tag=silingpucong,team=blue]
execute if entity @s[team=blue] store result score 红队 Mob_Count_Silingpucong if entity @e[tag=silingpucong,team=red]

execute if entity @s[team=red] if score 蓝队 Mob_Count_Silingpucong > 蓝队 Mob_Count_Silingpucong_Max run return fail
execute if entity @s[team=blue] if score 红队 Mob_Count_Silingpucong > 红队 Mob_Count_Silingpucong_Max run return fail

execute if entity @s[team=red] at @e[team=blue,tag=silingwushi] run summon minecraft:skeleton ~ ~ ~ {Team:blue,Tags:["silingpucong","Mob_Start"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d},{id:"safe_fall_distance",base:200}],Health:2.0f,Motion:[0,1,0]}

execute if entity @s[team=blue] at @e[team=red,tag=silingwushi] run summon minecraft:skeleton ~ ~ ~ {Team:red,Tags:["silingpucong","Mob_Start"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d},{id:"safe_fall_distance",base:200}],Health:2.0f,Motion:[0,1,0]}
scoreboard players reset * Mob_Count_Silingpucong
scoreboard players reset * Mob_Count_Silingpucong_Max
scoreboard players reset * Mob_Count_Silingwushi
data remove storage temp Mob_Count.Silingpucong
data remove storage temp Mob_Count.Silingwushi
