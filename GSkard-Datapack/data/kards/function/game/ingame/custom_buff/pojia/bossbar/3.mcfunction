$bossbar add kards:pojia_$(UUID) [{text:"破甲:防御力降低",color:"white",bold:true}]
$bossbar set kards:pojia_$(UUID) color pink
$bossbar set kards:pojia_$(UUID) players @s
$bossbar set kards:pojia_$(UUID) visible true

$execute as @s[tag=!bossbar_max_PoJia] run bossbar set kards:pojia_$(UUID) max $(Max)
tag @s add bossbar_max_PoJia
$execute store result bossbar kards:pojia_$(UUID) value run scoreboard players get @s PoJia

$execute if score @s PoJia matches 1 run bossbar remove kards:pojia_$(UUID)
execute if score @s PoJia matches 1 run tag @s remove bossbar_max_PoJia
