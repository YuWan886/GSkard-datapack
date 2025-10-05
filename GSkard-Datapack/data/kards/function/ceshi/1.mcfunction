execute store result score @s Talent_Random_1 run random value 1..20
execute store result score @s Talent_Random_2 run random value 1..20
execute store result score @s Talent_Random_3 run random value 1..20

execute if score @s Talent_Random_1 = @s Talent_Random_2 run return run function kards:ceshi/1
execute if score @s Talent_Random_2 = @s Talent_Random_3 run return run function kards:ceshi/1
execute if score @s Talent_Random_3 = @s Talent_Random_1 run return run function kards:ceshi/1

execute store result score @s Talent_Random_general run data get storage kards:dialog temp.A
execute if score @s Talent_Random_1 = @s Talent_Random_general run return run function kards:ceshi/1
execute store result score @s Talent_Random_general run data get storage kards:dialog temp.B
execute if score @s Talent_Random_1 = @s Talent_Random_general run return run function kards:ceshi/1
execute store result score @s Talent_Random_general run data get storage kards:dialog temp.C
execute if score @s Talent_Random_1 = @s Talent_Random_general run return run function kards:ceshi/1

execute store result score @s Talent_Random_general run data get storage kards:dialog temp.A
execute if score @s Talent_Random_2 = @s Talent_Random_general run return run function kards:ceshi/1
execute store result score @s Talent_Random_general run data get storage kards:dialog temp.B
execute if score @s Talent_Random_2 = @s Talent_Random_general run return run function kards:ceshi/1
execute store result score @s Talent_Random_general run data get storage kards:dialog temp.C
execute if score @s Talent_Random_2 = @s Talent_Random_general run return run function kards:ceshi/1

execute store result score @s Talent_Random_general run data get storage kards:dialog temp.A
execute if score @s Talent_Random_3 = @s Talent_Random_general run return run function kards:ceshi/1
execute store result score @s Talent_Random_general run data get storage kards:dialog temp.B
execute if score @s Talent_Random_3 = @s Talent_Random_general run return run function kards:ceshi/1
execute store result score @s Talent_Random_general run data get storage kards:dialog temp.C
execute if score @s Talent_Random_3 = @s Talent_Random_general run return run function kards:ceshi/1

execute store result storage kards:dialog temp.A int 1 run scoreboard players get @s Talent_Random_1
execute store result storage kards:dialog temp.B int 1 run scoreboard players get @s Talent_Random_2
execute store result storage kards:dialog temp.C int 1 run scoreboard players get @s Talent_Random_3