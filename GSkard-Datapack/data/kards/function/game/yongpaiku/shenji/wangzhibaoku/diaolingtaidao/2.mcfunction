scoreboard players remove @s diaolingtaidao_tujing 1
particle soul ~ ~ ~ 0.2 0.2 0.2 0 2 force @a

execute if entity @s[team=red] at @s run tag @e[team=blue,distance=..2] add diaolingtaidao_hurt
execute if entity @s[team=blue] at @s run tag @e[team=red,distance=..2] add diaolingtaidao_hurt

execute if block ~ ~ ~ #air run tp @s ^ ^ ^0.25
execute unless block ~ ~ ~ #air run scoreboard players set @s diaolingtaidao_tujing 0
execute unless block ~ ~ ~ #air run tp @s ^ ^ ^-0.25

execute if score @s diaolingtaidao_tujing matches 1.. at @s run return run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/2
playsound entity.wither.break_block player @a[distance=..20] ~ ~ ~ 10 2
execute if entity @e[tag=diaolingtaidao_hurt] run scoreboard players remove @s diaolingtaidao_Time 100
execute if score @s diaolingtaidao_Time matches 0 run tellraw @s [{text:"[凋零太刀]",color:"dark_gray"},{text:"拔刀·碎魂 效果就绪!",color:"gold"}]
execute if score @s diaolingtaidao_Time matches 0 run scoreboard players reset @s diaolingtaidao_Time
function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/3