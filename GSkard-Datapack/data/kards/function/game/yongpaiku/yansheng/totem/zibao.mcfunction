
tag @s add zibaotuteng
effect clear @s
execute as @e[distance=..5,tag=!zibaotuteng,gamemode=adventure] run damage @s 70 kards:zibao by @p[tag=zibaotuteng]
damage @s 10 kards:zibao
tag @s remove zibaotuteng
advancement revoke @s only kards:totem/zibao