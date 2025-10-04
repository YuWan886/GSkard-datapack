$bossbar add kards:huoyan_$(UUID) [{text:"燃烧:持续掉血",color:"red",bold:true}]
$bossbar set kards:huoyan_$(UUID) players @s
$bossbar set kards:huoyan_$(UUID) visible true
$bossbar set kards:huoyan_$(UUID) color red

$execute as @s[tag=!bossbar_max_Fire] run bossbar set kards:huoyan_$(UUID) max $(Max)
tag @s add bossbar_max_Fire
$execute store result bossbar kards:huoyan_$(UUID) value run scoreboard players get @s Fire

$execute if score @s Fire matches 0 run bossbar remove kards:huoyan_$(UUID)
execute if score @s Fire matches 0 run tag @s remove bossbar_max_Fire
