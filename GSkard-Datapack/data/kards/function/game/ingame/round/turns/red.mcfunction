title @a title [{translate: "game.ingame.round.startround.1",color:"red",bold:true}]
bossbar set minecraft:roundtime color red
scoreboard players set @a[team=red] CanuseKard 1
scoreboard players set @a[team=blue] CanuseKard 0
scoreboard players set @a[team=red] tiaoguo 1
scoreboard players set @a[team=blue] tiaoguo 0
execute positioned as @e[limit=1,tag=r_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 1b
execute positioned as @e[limit=1,tag=r_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 1b

execute positioned as @e[limit=1,tag=b_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s NoAI set value 0b
execute positioned as @e[limit=1,tag=b_dw] as @e[type=!player,dx=24,dz=24,dy=255] run data modify entity @s Invulnerable set value 0b