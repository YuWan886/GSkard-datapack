summon marker ~ ~ ~ {Tags:[shizhongjian_template]}
execute store result score @s shizhongjian_template_1 run data get entity @n[tag=shizhongjian_template] UUID[1]
kill @n[type=marker,tag=shizhongjian_template]
tag @s add shizhongjian_true
advancement revoke @s only kards:shenqi/shizhongjian
