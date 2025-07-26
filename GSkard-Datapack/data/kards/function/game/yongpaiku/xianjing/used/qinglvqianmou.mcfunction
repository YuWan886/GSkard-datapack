function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_qinglvqianmou 1

execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_qinglvqianmou 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_qinglvqianmou kardCount
