execute as @s run scoreboard players add @s Fire 60
execute as @s if score @s Fire matches 601..2147483647 run scoreboard players set @s Fire 600
advancement revoke @s only kards:shenqi/yanyangdajian