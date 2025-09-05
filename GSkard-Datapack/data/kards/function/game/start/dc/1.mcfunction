scoreboard players remove #system wait_start 1

execute if score #system wait_start matches 100 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "5s",color:"green",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 100 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 80 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "4s",color:"gold",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 80 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 60 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "3s",color:"yellow",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 60 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 40 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "2s",color:"red",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 40 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 20 run title @a title [{text: "游戏将在",color:"green",bold:true},{text: "1s",color:"dark_red",bold:true},{text: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 20 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1

execute if score #system wait_start matches 0 run function kards:game/start/start
execute if score #system wait_start matches 0 run scoreboard players reset #system wait_start