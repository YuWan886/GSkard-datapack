attribute @s minecraft:max_health base set 30
data modify entity @s IsBaby set value 0b
effect give @s minecraft:instant_damage 1 200 true
effect give @s slowness 5 100 true
effect give @s weakness 5 100 true
tag @s add wuwangjiangshi
scoreboard players set @s wuwangchuchang 101
scoreboard players set @s wait_spawn 2