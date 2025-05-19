title @a title [{translate: "game.ingame.round.turns.blue.1",color:"blue",bold:true}]
bossbar set minecraft:roundtime color blue
scoreboard players set @a[team=red] CanuseKard 0
scoreboard players set @a[team=blue] CanuseKard 1
scoreboard players set @a[team=red] tiaoguo 0
scoreboard players set @a[team=blue] tiaoguo 1
execute positioned as @e[limit=1,tag=b_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 1b
execute positioned as @e[limit=1,tag=b_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 1b

execute positioned as @e[limit=1,tag=r_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 0b
execute positioned as @e[limit=1,tag=r_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 0b