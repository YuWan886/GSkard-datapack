
execute as @n[tag=ceshi_1] at @s anchored eyes run summon wither_skull ^ ^ ^0.25 {Tags:["ceshi"]}
execute as @n[tag=ceshi_1] at @s anchored eyes run rotate @n[tag=ceshi] ~ ~

data modify entity @n[tag=ceshi] Owner set from entity @s UUID

execute as @n[tag=ceshi_1] at @s as @n[tag=ceshi] at @s run function kards:ceshi/2