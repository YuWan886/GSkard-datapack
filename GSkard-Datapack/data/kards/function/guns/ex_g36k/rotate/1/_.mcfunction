execute store result score @s Rotation_1 run data get entity @s Rotation[1] 1000

execute unless block ^ ^-0.325 ^ air if block ^ ^0.325 ^ air if score @s Rotation_1 matches 0..90000 store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ^ ^-0.325 ^ air if block ^ ^0.325 ^ air if score @s Rotation_1 matches -90000..-1 run rotate @s ~180 ~


execute unless block ^ ^0.325 ^ air if block ^ ^-0.325 ^ air if score @s Rotation_1 matches 0..90000 run rotate @s ~180 ~
execute unless block ^ ^0.325 ^ air if block ^ ^-0.325 ^ air if score @s Rotation_1 matches -90000..-1 store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]