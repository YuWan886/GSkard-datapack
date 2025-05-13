tp @s -83 -46 -90
title @s times 10t 40t 10t
execute if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches ..9 run title @s title [{"text":"00","color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Tick"},"color":"green"}]
execute if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches 10.. run title @s title [{"text":"00","color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Tick"},"color":"green"}]

execute if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches ..9 run title @s title [{"text":"0","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Min"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Tick"},"color":"green"}]
execute if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches 10.. run title @s title [{"text":"0","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Min"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Tick"},"color":"green"}]

execute if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches ..9 run title @s title [{"score":{"name":"@s","objective":"RunningTime_Min"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Tick"},"color":"green"}]
execute if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches 10.. run title @s title [{"score":{"name":"@s","objective":"RunningTime_Min"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Sec"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"RunningTime_Tick"},"color":"green"}]

scoreboard players set @s RunningTime 0
scoreboard players set @s RunningTime_All 0
scoreboard players set @s RunningTime_Sec 0
scoreboard players set @s RunningTime_Min 0
scoreboard players set @s RunningTime_Tick 0
execute at @s run summon firework_rocket ~ ~ ~
tag @s remove Running
tag @s add Un_Ready
team join lobby

