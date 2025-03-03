tag @s add User
execute if entity @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:ceshi/1
execute if entity @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:ceshi/1
tag @s remove User