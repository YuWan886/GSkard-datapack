execute as @e[type=bat,tag=wurenji] unless data entity @s Passengers run kill @s
execute as @e[type=shulker,tag=wurenji] at @s unless entity @e[type=bat,distance=..1] run kill @s

execute as @e[type=bat,tag=wurenji] at @s unless block ^ ^ ^0.75 air run tp @s ^ ^ ^-0.75
execute as @e[type=bat,tag=wurenji] at @s unless block ~ ~0.5 ~ air run tp @s ~ ~-0.5 ~
execute as @e[type=bat,tag=wurenji] at @s unless block ~ ~-0.5 ~ air run tp @s ~ ~0.5 ~
execute as @e[type=bat,tag=wurenji] at @s unless block ^0.75 ^ ^ air run tp @s ^-0.75 ^ ^

execute as @e[tag=wurenji,type=shulker] unless data entity @s {NoAI:1b} run scoreboard players add @s Mob_Attack_Time 1
execute as @e[scores={Mob_Attack_Time=100..},tag=wurenji] at @s run function kards:game/yongpaiku/juntuan/wurenjiqun/2