execute store result score #system Ready_Num if entity @a[tag=Ready]
bossbar set minecraft:start_game players @a
execute if score #system Ready_Num matches 0..1 run bossbar set minecraft:start_game name [{text: "等待玩家准备...",color:"green",bold:true}]
execute if score #system Ready_Num matches 0 run bossbar set minecraft:start_game max 100
execute if score #system Ready_Num matches 0 run bossbar set minecraft:start_game value 100
execute if score #system Ready_Num matches 1 run bossbar set minecraft:start_game max 2
execute if score #system Ready_Num matches 1.. store result bossbar minecraft:start_game value if entity @a[tag=Ready]
execute if score #system Ready_Num matches 2.. store result bossbar minecraft:start_game max if entity @a[tag=Ready]
execute if score #system Ready_Num matches 2.. if entity @a[tag=Ready,team=lobby] run bossbar set minecraft:start_game name [{text: "所有准备的玩家加入了一个队伍才能开始游戏",color:"green",bold:true}]
execute if score #system Ready_Num matches 2.. if entity @a[tag=Ready,team=lobby] run scoreboard players set #system wait_start -1
execute if score #system Ready_Num matches 2.. unless entity @a[tag=Ready,team=lobby] run bossbar set minecraft:start_game name [{text: "游戏即将开始...",color:"green",bold:true}]
execute if score #system Ready_Num matches 2.. unless entity @a[tag=Ready,team=lobby] if score #system wait_start matches -1 run scoreboard players set #system wait_start 200
execute if score #system wait_start matches 200 run clear @a #minecraft:banners
execute if score #system wait_start matches 200 run title @a times 10t 10t 10t
execute if score #system wait_start matches 200 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "10s",color:"gold",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 200 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 180 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "9s",color:"gold",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 180 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 160 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "8s",color:"gold",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 160 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 140 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "7s",color:"gold",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 140 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 120 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "6s",color:"gold",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 120 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 100 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "5s",color:"yellow",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 100 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 80 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "4s",color:"yellow",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 80 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 60 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "3s",color:"yellow",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 60 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 40 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "2s",color:"red",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 40 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 20 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "1s",color:"red",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 20 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 0 run function kards:game/start/start
execute if score #system wait_start matches 0 run scoreboard players set #system wait_start -1
execute if score #system wait_start matches 1.. run scoreboard players remove #system wait_start 1
