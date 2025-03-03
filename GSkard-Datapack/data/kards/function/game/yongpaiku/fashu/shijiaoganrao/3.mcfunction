execute store result score @s random_shijiao2 run random value 1..13
execute if score @s random_shijiao2 matches 1 run tp @s ~ ~ ~ 180 ~
execute if score @s random_shijiao2 matches 2 run tp @s ~ ~ ~ 150 ~
execute if score @s random_shijiao2 matches 3 run tp @s ~ ~ ~ 120 ~
execute if score @s random_shijiao2 matches 4 run tp @s ~ ~ ~ 90 ~
execute if score @s random_shijiao2 matches 5 run tp @s ~ ~ ~ 60 ~
execute if score @s random_shijiao2 matches 6 run tp @s ~ ~ ~ 30 ~
execute if score @s random_shijiao2 matches 7 run tp @s ~ ~ ~ 0 ~
execute if score @s random_shijiao2 matches 8 run tp @s ~ ~ ~ -30 ~
execute if score @s random_shijiao2 matches 9 run tp @s ~ ~ ~ -60 ~
execute if score @s random_shijiao2 matches 10 run tp @s ~ ~ ~ -90 ~
execute if score @s random_shijiao2 matches 11 run tp @s ~ ~ ~ -120 ~
execute if score @s random_shijiao2 matches 12 run tp @s ~ ~ ~ -150 ~
execute if score @s random_shijiao2 matches 13 run tp @s ~ ~ ~ -180 ~
scoreboard players set @s random_shijiao2 0