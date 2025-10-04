scoreboard players set @s Death_Item 41
tag @s add Death_Player

execute at @s run function kards:game/player/death/item/2

execute as @e[tag=Player_Death_Item,type=item] at @s run function kards:game/player/death/item/3

clear @s
tag @s remove Death_Player
