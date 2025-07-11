scoreboard players set @a[team=!111,team=!222] basket_deaths 0
execute as @a if score @s basket_deaths matches 1.. run scoreboard players set @s basket_deaths1 5
execute as @a if score @s basket_deaths matches 1.. run scoreboard players set @s basket_deaths 0
execute as @a if score @s basket_deaths1 matches 1.. run scoreboard players remove @s basket_deaths1 1
execute as @a if score @s basket_deaths1 matches 1 run function kards:lobby/game/1