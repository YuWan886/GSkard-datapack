
execute as @s[team=blue] run tag @a[team=blue] add jyda
execute as @s[team=red] run tag @a[team=red] add jyda
playsound minecraft:block.ancient_debris.break block @a[distance=..20]
playsound minecraft:block.anvil.place block @a
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
summon minecraft:arrow ~ ~4 ~ {Tags:["jyjs"]}
execute as @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] at @s run spreadplayers ~ ~ 0 4 true @s
#execute as @s at @e[distance=..20,tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest] run execute at @s as @e[distance=..2] unless entity @s[tag=jyda] run damage @s 8 kards:chuanci by @p
execute as @s at @s run execute at @s as @e[distance=..20] unless entity @s[tag=jyda] run damage @s 26 kards:chuanci
execute as @e[type=minecraft:arrow,limit=10,sort=nearest,distance=..20,tag=jyjs] at @s run particle minecraft:end_rod ~ ~ ~ 0 10 0 0 20








#execute as @e[tag=jyjs,type=minecraft:arrow,limit=10,sort=nearest,distance=..120] at @s run execute as @e[distance=..2,type=!minecraft:arrow,tag=!jyda] run damage @s 18 minecraft:magic by @e[tag=jyda,limit=1,sort=nearest]
execute as @e[type=minecraft:arrow,limit=10,sort=nearest,distance=..20] at @s run particle minecraft:end_rod ~ ~ ~ 0 -8 0 0 80
execute as @e[type=minecraft:arrow,limit=10,sort=nearest,distance=..20] at @s run particle minecraft:explosion
function kards:game/yongpaiku/fashu/junlintianxia/jy2

execute as @e[tag=jyda] at @s run kill @e[type=arrow,limit=11,tag=jyjs]

tag @s remove jyda

