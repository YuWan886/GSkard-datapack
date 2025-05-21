#大厅buff
execute if score #system GameStatus matches 0 run effect give @a[team=!111,team=!222] minecraft:resistance 1 4 true
execute if score #system GameStatus matches 0 run effect give @a[team=!111,team=!222] instant_health 1 200 true
#视奸buff
execute if score #system GameStatus matches 1 run effect give @a[tag=Spectator] minecraft:resistance 1 4 true
execute if score #system GameStatus matches 1 run effect give @a[tag=Spectator] minecraft:instant_health 1 4 true
#准备
execute if score #system GameStatus matches 0 run function kards:lobby/ready/general
#大厅小游戏
execute if score #system GameStatus matches 0 run function kards:lobby/game/general
#设置
function kards:lobby/setting/map/general
#队伍
execute if score #system GameStatus matches 0 run function kards:lobby/team/general
#wiki
execute if score #system GameStatus matches 0 run function kards:lobby/wiki/general
#boss栏
execute if score #system GameStatus matches 0 run function kards:lobby/bossbar/general
execute if score #system GameStatus matches 0 run bossbar set minecraft:start_game visible true
execute unless score #system GameStatus matches 0 run bossbar set minecraft:start_game visible false
#神秘打野点
execute positioned 105.5 227 -14.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 100 2
execute positioned 105.5 227 -14.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] run tp @s 103.0 239 -48.0 90 ~
execute positioned 105.5 239 -50.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 100 2
execute positioned 105.5 239 -50.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] run tp @s 104.0 227 -12.0 90 ~

#跑酷
function kards:lobby/run/general
#教程
execute positioned 89.0 257.5 -30.0 run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.001 5
execute positioned 89.0 257.5 -21.0 run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.001 5

execute positioned 88.0 255 -22.0 run advancement grant @a[dx=2,dz=2,dy=3] only kards:chengjiu/laodeng
execute positioned 88.0 255 -31.0 run advancement grant @a[dx=2,dz=2,dy=3] only kards:chengjiu/laodeng

execute positioned 58.0 254 -27.0 run advancement grant @a[dx=3,dz=3] only kards:chengjiu/jiaocheng

execute if score #system GameStatus matches 0 as @a[advancements={kards:chengjiu/jiaocheng=false,kards:chengjiu/laodeng=false}] positioned 56.0 256.00 -33.0 unless entity @s[dz=14,dy=10,dx=42] run tp @s 94 256 -26 90 0
