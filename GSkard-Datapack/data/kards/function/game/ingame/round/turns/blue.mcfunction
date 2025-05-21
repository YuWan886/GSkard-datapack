title @a title [{translate: "game.ingame.round.roundtime.4",color:"blue",bold:true}]
bossbar set minecraft:roundtime color blue
scoreboard players set @a[team=red] CanuseKard 0
scoreboard players set @a[team=blue] CanuseKard 1
scoreboard players set @a[team=red] tiaoguo 0
scoreboard players set @a[team=blue] tiaoguo 1
execute as @e[type=!player,tag=!tuteng,team=red] run data modify entity @s NoAI set value 1b
execute as @e[type=!player,tag=!tuteng,team=red] run data modify entity @s Invulnerable set value 1b

execute as @e[type=!player,tag=!tuteng,team=blue] run data modify entity @s NoAI set value 0b
execute as @e[type=!player,tag=!tuteng,team=blue] run data modify entity @s Invulnerable set value 0b