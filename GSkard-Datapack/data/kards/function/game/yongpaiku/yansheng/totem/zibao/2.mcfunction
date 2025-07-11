execute as @e[distance=..5,tag=!zibaotuteng,gamemode=adventure] run damage @s 66 kards:zibao by @p[tag=zibaotuteng]
effect clear @s
attribute @s max_health base set 1
damage @s 10 kards:zibao
attribute @s max_health base reset
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
playsound minecraft:brmm player @a[distance=..20] ~ ~ ~ 100 1
tag @s remove zibaotuteng
