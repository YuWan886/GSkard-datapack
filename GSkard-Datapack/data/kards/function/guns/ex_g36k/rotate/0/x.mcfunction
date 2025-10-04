execute store result score @s Rotation_0 run data get entity @s Rotation[0] 1000
execute if score @s Rotation_0 matches 1..180000 run scoreboard players set #temp Rotation_0 180000
execute if score @s Rotation_0 matches -180000..-1 run scoreboard players set #temp Rotation_0 -180000

execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation #temp Rotation_0 -= @s Rotation_0
execute if score @s Rotation_0 matches 0 positioned ^ ^ ^0.25 facing entity @s feet run tp @s ~ ~ ~ ~ ~
