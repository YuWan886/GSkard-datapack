execute if score @s used_zhengyizhichui1 matches 0 if score @s kardCount matches 5.. run scoreboard players add @s used_zhengyizhichui2 1
execute if score @s used_zhengyizhichui1 matches 0 if score @s kardCount matches 5.. run scoreboard players add @s used_zhengyizhichui1 1
execute if score @s used_zhengyizhichui2 matches 1 if score @s kardCount matches 5.. run scoreboard players operation @s kardCount -= #kard_1 kardCount

execute if score @s[team=red] used_zhengyizhichui1 matches 1 as @r[team=blue,gamemode=adventure] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyizhichui/2
execute if score @s[team=blue] used_zhengyizhichui1 matches 1 as @r[team=red,gamemode=adventure] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyizhichui/2
execute if score @s used_zhengyizhichui1 matches 1 run scoreboard players remove @s used_zhengyizhichui1 1

scoreboard players set @s used_zhengyizhichui 0
scoreboard players set @s used_zhengyizhichui1 0
scoreboard players set @s used_zhengyizhichui2 0