execute store result score @s Xp_Levels run xp query @s levels
scoreboard players operation @s Xp_Point_Total = @s Xp_Levels
scoreboard players operation @s Xp_Temp1 = @s Xp_Levels

# L^2
scoreboard players operation @s Xp_Point_Total *= @s Xp_Point_Total

# +6L 0..16
execute if score @s Xp_Levels matches 0..16 run scoreboard players set #system Xp_Temp1 6
execute if score @s Xp_Levels matches 0..16 run scoreboard players operation @s Xp_Temp1 *= #system Xp_Temp1

execute if score @s Xp_Levels matches 0..16 run scoreboard players operation @s Xp_Point_Total += @s Xp_Temp1

# *2.5-40.5L+360 17..31
execute if score @s Xp_Levels matches 17..31 run scoreboard players set #system Xp_Temp1 25
execute if score @s Xp_Levels matches 17..31 run scoreboard players operation @s Xp_Point_Total *= #system Xp_Temp1

execute if score @s Xp_Levels matches 17..31 run scoreboard players set #system Xp_Temp1 405
execute if score @s Xp_Levels matches 17..31 run scoreboard players operation @s Xp_Temp1 *= #system Xp_Temp1
execute if score @s Xp_Levels matches 17..31 run scoreboard players operation @s Xp_Point_Total -= @s Xp_Temp1

execute if score @s Xp_Levels matches 17..31 run scoreboard players set @s Xp_Temp1 3600
execute if score @s Xp_Levels matches 17..31 run scoreboard players operation @s Xp_Point_Total += @s Xp_Temp1
execute if score @s Xp_Levels matches 17..31 run scoreboard players set #system Xp_Temp1 10
execute if score @s Xp_Levels matches 17..31 run scoreboard players operation @s Xp_Point_Total /= #system Xp_Temp1


# *4.5-162.5L+2220 32..
execute if score @s Xp_Levels matches 32.. run scoreboard players set #system Xp_Temp1 45
execute if score @s Xp_Levels matches 32.. run scoreboard players operation @s Xp_Point_Total *= #system Xp_Temp1

execute if score @s Xp_Levels matches 32.. run scoreboard players set #system Xp_Temp1 1625
execute if score @s Xp_Levels matches 32.. run scoreboard players operation @s Xp_Temp1 *= #system Xp_Temp1
execute if score @s Xp_Levels matches 32.. run scoreboard players operation @s Xp_Point_Total -= @s Xp_Temp1

execute if score @s Xp_Levels matches 32.. run scoreboard players set @s Xp_Temp1 22200
execute if score @s Xp_Levels matches 32.. run scoreboard players operation @s Xp_Point_Total += @s Xp_Temp1
execute if score @s Xp_Levels matches 32.. run scoreboard players set #system Xp_Temp1 10
execute if score @s Xp_Levels matches 32.. run scoreboard players operation @s Xp_Point_Total /= #system Xp_Temp1

execute store result score @s Xp_Temp2 run xp query @s points
scoreboard players operation @s Xp_Point_Total += @s Xp_Temp2

scoreboard players reset * Xp_Temp1
scoreboard players reset * Xp_Temp2

#6926+62175