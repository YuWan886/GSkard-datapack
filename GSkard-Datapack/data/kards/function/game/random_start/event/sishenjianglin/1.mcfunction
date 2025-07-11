execute as @a[gamemode=adventure] run scoreboard players operation @s sishenjianglin = @s health
scoreboard players set system sishenjianglin 500
scoreboard players operation system sishenjianglin < @a[gamemode=adventure] sishenjianglin
execute as @a[gamemode=adventure] if score @s sishenjianglin = system sishenjianglin run tag @s add sishenjianglin
execute as @a[tag=sishenjianglin] run say 1
title @a times 0t 6s 0t
title @a title [{text:"死神降临",color:"dark_red","bold":true}]
schedule function kards:game/random_start/event/sishenjianglin/2 3s
execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 100 2
