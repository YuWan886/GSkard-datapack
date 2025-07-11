tellraw @s [{text: " -",color:"gray",italic:false},{text: "冻结 ",color:"aqua",italic:false},{text: "点燃",color:"dark_red",italic:false},{text: "6格内敌对生物7.5s",color:"gray",italic:false}]
#冰冻
execute if entity @s[team=red] run tag @e[distance=..6,team=blue,gamemode=!spectator] add DongJie
execute if entity @s[team=red] run scoreboard players add @e[distance=..6,team=blue,gamemode=!spectator] DongJie 150

execute if entity @s[team=blue] run tag @e[distance=..6,team=red,gamemode=!spectator] add DongJie
execute if entity @s[team=blue] run scoreboard players add @e[distance=..6,team=red,gamemode=!spectator] DongJie 150

execute at @s run playsound minecraft:entity.player.hurt_freeze player @a[distance=..20] ~ ~ ~ 100 0
#点燃
execute if entity @s[team=red] run tag @e[distance=..6,tag=!tuteng,team=blue,gamemode=!spectator] add Fire
execute if entity @s[team=blue] run tag @e[distance=..6,tag=!tuteng,team=red,gamemode=!spectator] add Fire

execute if entity @s[team=red] run scoreboard players add @e[distance=..6,tag=!tuteng,team=blue,gamemode=!spectator] Fire 150
execute if entity @s[team=blue] run scoreboard players add @e[distance=..6,tag=!tuteng,team=red,gamemode=!spectator] Fire 150
