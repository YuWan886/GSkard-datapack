function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"golden_helmet"},chest:{id:"golden_chestplate"},legs:{id:"golden_leggings"},feet:{id:"golden_boots"}}}
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"golden_helmet"},chest:{id:"golden_chestplate"},legs:{id:"golden_leggings"},feet:{id:"golden_boots"}}}

scoreboard players set @s temp 3
scoreboard players operation @s temp_2 = @s kardCountmax
scoreboard players operation @s temp_2 /= @s temp
execute if score @s temp_2 matches 11.. run scoreboard players set @s temp_2 10
execute if score @s temp_2 matches 1.. run function kards:game/yongpaiku/juntuan/xiajieruqing/2
scoreboard players reset @s temp
scoreboard players reset @s temp_2

function kards:game/yongpaiku/xianjing/jiance/mobjiance

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiajieruqing kardCount
