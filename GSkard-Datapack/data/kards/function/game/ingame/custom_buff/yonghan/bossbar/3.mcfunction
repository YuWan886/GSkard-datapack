$bossbar add kards:yonghan_$(UUID) "" 
$bossbar set kards:yonghan_$(UUID) name [{text:"永寒:移速-5% 满层后冻结2.5s",color:"aqua",bold:true}]
$bossbar set kards:yonghan_$(UUID) color blue
$bossbar set kards:yonghan_$(UUID) players @s
$bossbar set kards:yonghan_$(UUID) visible true
$bossbar set kards:yonghan_$(UUID) style notched_6

$execute as @s[tag=!bossbar_max_YongHan] run bossbar set kards:yonghan_$(UUID) max 18
$execute store result bossbar kards:yonghan_$(UUID) value run scoreboard players get @s YongHan

$execute if score @s YongHan matches 0 run bossbar remove kards:yonghan_$(UUID)