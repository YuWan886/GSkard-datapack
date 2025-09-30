scoreboard players remove #system wait_start 1

execute if score #system wait_start matches 100 run title @a title [{translate: "kards.function.game.start.dc.1.1", fallback: "游戏将在",color:"green",bold:true},{translate: "kards.function.game.start.dc.1.2", fallback: "5s",color:"green",bold:true},{translate: "kards.function.game.start.dc.1.3", fallback: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 100 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 80 run title @a title [{translate: "kards.function.game.start.dc.1.1", fallback: "游戏将在",color:"green",bold:true},{translate: "kards.function.game.start.dc.1.4", fallback: "4s",color:"gold",bold:true},{translate: "kards.function.game.start.dc.1.3", fallback: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 80 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 60 run title @a title [{translate: "kards.function.game.start.dc.1.1", fallback: "游戏将在",color:"green",bold:true},{translate: "kards.function.game.start.dc.1.5", fallback: "3s",color:"yellow",bold:true},{translate: "kards.function.game.start.dc.1.3", fallback: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 60 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 40 run title @a title [{translate: "kards.function.game.start.dc.1.1", fallback: "游戏将在",color:"green",bold:true},{translate: "kards.function.game.paiku.juntuan.silingwushi.6", fallback: "2s",color:"red",bold:true},{translate: "kards.function.game.start.dc.1.3", fallback: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 40 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score #system wait_start matches 20 run title @a title [{translate: "kards.function.game.start.dc.1.1", fallback: "游戏将在",color:"green",bold:true},{translate: "kards.function.game.start.dc.1.6", fallback: "1s",color:"dark_red",bold:true},{translate: "kards.function.game.start.dc.1.3", fallback: "后开始...",color:"green",bold:true}]
execute if score #system wait_start matches 20 as @a at @s run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1

execute if score #system wait_start matches 0 run function kards:game/start/start
execute if score #system wait_start matches 0 run scoreboard players reset #system wait_start