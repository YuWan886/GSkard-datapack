title @a title [{translate: "game.ingame.round.roundtime.6",color:"red",bold:true}]
bossbar set minecraft:roundtime color red
scoreboard players set @a[team=red] CanuseKard 1
scoreboard players set @a[team=blue] CanuseKard 0
scoreboard players set @a[team=red] tiaoguo 1
scoreboard players set @a[team=blue] tiaoguo 0
execute as @e[type=!player,tag=!tuteng,team=red] run data modify entity @s NoAI set value 0b
execute as @e[type=!player,tag=!tuteng,team=red] run data modify entity @s Invulnerable set value 0b
execute as @e[type=!player,tag=!tuteng,team=red] run data modify entity @s Silent set value 0b

execute as @e[type=!player,tag=!tuteng,team=blue] run data modify entity @s NoAI set value 1b
execute as @e[type=!player,tag=!tuteng,team=blue] run data modify entity @s Invulnerable set value 1b
execute as @e[type=!player,tag=!tuteng,team=blue] run data modify entity @s Silent set value 1b