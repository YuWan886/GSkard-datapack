$bossbar add kards:dongjie_$(UUID) [{text:"冻结",color:"aqua",bold:true}]
$bossbar set kards:dongjie_$(UUID) color blue
$bossbar set kards:dongjie_$(UUID) players @s
$bossbar set kards:dongjie_$(UUID) visible true

$execute as @s[tag=!bossbar_max_DongJie] run bossbar set kards:dongjie_$(UUID) max $(Max)
tag @s add bossbar_max_DongJie
$execute store result bossbar kards:dongjie_$(UUID) value run scoreboard players get @s DongJie

$execute if score @s DongJie matches 1 run bossbar remove kards:dongjie_$(UUID)
execute if score @s DongJie matches 1 run tag @s remove bossbar_max_DongJie
