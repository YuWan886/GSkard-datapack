execute store result storage lastdeathlocation.pos x int 1 run data get entity @s LastDeathLocation.pos.[0]
execute store result storage lastdeathlocation.pos y int 1 run data get entity @s LastDeathLocation.pos.[1]
execute store result storage lastdeathlocation.pos z int 1 run data get entity @s LastDeathLocation.pos.[2]
function kards:music/death_for_fall/2 with storage lastdeathlocation.pos