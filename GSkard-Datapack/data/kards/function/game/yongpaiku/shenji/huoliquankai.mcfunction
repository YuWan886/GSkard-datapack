function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance
scoreboard players add @s kardCount 15
execute store result score 人数 b_alive if entity @a[team=blue,gamemode=adventure]
execute store result score 人数 r_alive if entity @a[team=red,gamemode=adventure]
execute if entity @s[team=blue] if score 人数 b_alive matches ..2 run scoreboard players add @a[team=blue,gamemode=adventure] kardCount 10
execute if entity @s[team=red] if score 人数 r_alive matches ..2 run scoreboard players add @a[team=red,gamemode=adventure] kardCount 10
scoreboard players set @s ChaoPin 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_huoliquankai kardCount
