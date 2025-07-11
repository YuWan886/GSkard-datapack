execute store result score @s YunSuan_1 run attribute @s minecraft:max_health get
execute store result score @s YunSuan_2 run data get entity @s Health
execute on attacker run tag @s add sishenzhilian_chujue_attacker
scoreboard players set @s YunSuan_3 100
scoreboard players operation @s YunSuan_2 *= @s YunSuan_3
scoreboard players operation @s YunSuan_2 /= @s YunSuan_1
execute if score @s YunSuan_2 matches ..9 at @s run playsound minecraft:entity.experience_orb.pickup player @p[tag=sishenzhilian] ~ ~ ~ 1000 0
execute if score @s YunSuan_2 matches ..9 store result storage minecraft:sishenzhilian chujue.damage float 1.5 run data get entity @s Health
execute if score @s YunSuan_2 matches ..9 run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/2 with storage sishenzhilian chujue
execute on attacker run tag @s remove sishenzhilian_chujue_attacker
advancement revoke @s only kards:shenqi/tianshenshibanjia/enchantment/chujue
