gamemode spectator @s
scoreboard players set @s death 0
execute if entity @s[team=red] run scoreboard players add #system r_death 1
execute if entity @s[team=blue] run scoreboard players add #system b_death 1
