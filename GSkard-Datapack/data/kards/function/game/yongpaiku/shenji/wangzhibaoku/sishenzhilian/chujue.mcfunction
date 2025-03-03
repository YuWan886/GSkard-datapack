execute store result score @s YunSuan_1 run attribute @s minecraft:max_health get
execute store result score @s YunSuan_2 run data get entity @s Health
scoreboard players set @s YunSuan_3 100
scoreboard players operation @s YunSuan_2 *= @s YunSuan_3
scoreboard players operation @s YunSuan_2 /= @s YunSuan_1
execute if score @s YunSuan_2 matches ..9 at @s run playsound minecraft:entity.experience_orb.pickup player @p[tag=sishenzhilian] ~ ~ ~ 1000 0
execute if score @s YunSuan_2 matches ..9 store result storage sishenzhilian chujue.damage int 2 run data get entity @s Health
execute if score @s YunSuan_2 matches ..9 run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/chujuechenggong with storage minecraft:sishenzhilian chujue