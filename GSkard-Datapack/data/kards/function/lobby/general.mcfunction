#大厅buff
execute if score system status matches 0 run effect give @a[team=!111,team=!222] minecraft:resistance 1 4 true
execute if score system status matches 0 run effect give @a[team=!111,team=!222] instant_health 1 200 true
#视奸buff
execute if score system status matches 1 run effect give @a[tag=Spectator] minecraft:resistance 1 4 true
execute if score system status matches 1 run effect give @a[tag=Spectator] minecraft:instant_health 1 4 true
#准备
execute if score system status matches 0 run function kards:lobby/ready/general
#大厅小游戏
execute if score system status matches 0 run function kards:lobby/game/general
#设置
function kards:lobby/setting/map/general
#队伍
execute if score system status matches 0 run function kards:lobby/team/general
#wiki
execute if score system status matches 0 run function kards:lobby/wiki/general
#boss栏
execute if score system status matches 0 run function kards:lobby/bossbar/general
execute if score system status matches 0 run bossbar set minecraft:start_game visible true
execute unless score system status matches 0 run bossbar set minecraft:start_game visible false
#踩到玻璃传送回去
execute if score system status matches 0 as @a at @s if block ~ ~-1 ~ light_gray_stained_glass run tp @s 59 226 -26 -90 0