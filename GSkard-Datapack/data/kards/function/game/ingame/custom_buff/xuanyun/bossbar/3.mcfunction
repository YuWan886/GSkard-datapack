$bossbar add kards:xuanyun_$(UUID) [{text:"眩晕:无法移动与攻击",color:"white",bold:true}]
$bossbar set kards:xuanyun_$(UUID) color yellow
$bossbar set kards:xuanyun_$(UUID) players @s
$bossbar set kards:xuanyun_$(UUID) visible true

$execute as @s[tag=!bossbar_max_XuanYun] run bossbar set kards:xuanyun_$(UUID) max $(Max)
tag @s add bossbar_max_XuanYun
$execute store result bossbar kards:xuanyun_$(UUID) value run scoreboard players get @s XuanYun

$execute if score @s XuanYun matches 1 run bossbar remove kards:xuanyun_$(UUID)
execute if score @s XuanYun matches 1 run tag @s remove bossbar_max_XuanYun
