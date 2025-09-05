
scoreboard players add @s HealBack 20

execute if entity @s[team=red] run tag @e[distance=..6,team=blue,gamemode=!spectator] add DongJie
execute if entity @s[team=red] run scoreboard players add @e[distance=..6,team=blue,gamemode=!spectator] DongJie 200

execute if entity @s[team=blue] run tag @e[distance=..6,team=red,gamemode=!spectator] add DongJie
execute if entity @s[team=blue] run scoreboard players add @e[distance=..6,team=red,gamemode=!spectator] DongJie 200

execute at @s run playsound minecraft:entity.player.hurt_freeze player @a[distance=..20] ~ ~ ~ 100 0

effect give @s absorption 120 9 false

advancement revoke @s only kards:totem/dongjie