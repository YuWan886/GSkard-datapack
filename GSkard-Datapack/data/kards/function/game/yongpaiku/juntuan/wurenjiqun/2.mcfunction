scoreboard players set @s Mob_Attack_Time 0

damage @s 2 generic_kill

summon shulker_bullet ^ ^ ^0.5 {Tags:[bullet_start],Passengers:[{id:"endermite",Tags:["bullet_start"]}]}

execute if entity @s[team=red] as @e[tag=bullet_start,type=shulker_bullet] run data modify entity @s Target set from entity @p[team=blue,gamemode=adventure] UUID
execute if entity @s[team=blue] as @e[tag=bullet_start,type=shulker_bullet] run data modify entity @s Target set from entity @p[team=red,gamemode=adventure] UUID
execute as @e[type=shulker_bullet,tag=bullet_start] run data modify entity @s Steps set value 1

execute if entity @s[team=red] run team join red @e[tag=bullet_start,type=endermite]
execute if entity @s[team=blue] run team join blue @e[tag=bullet_start,type=endermite]

tag @e[tag=bullet_start] remove bullet_start