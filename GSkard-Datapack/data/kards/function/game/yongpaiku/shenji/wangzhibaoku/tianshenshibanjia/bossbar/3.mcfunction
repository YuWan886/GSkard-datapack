scoreboard players add @s tianshenshibanjia_xiansheng 0
$bossbar add kards:xiansheng_$(UUID) ""

$execute if score @s tianshenshibanjia_xiansheng matches 0..11 run bossbar set kards:xiansheng_$(UUID) name [{text:"显圣",color:"gold",bold:true},{score:{name:"@s",objective:"tianshenshibanjia_xiansheng"},color:"gold",bold:true},{text:"层",color:"gold",bold:true},{text:" | ",color:"gray",bold:true},{text:"抗性提升 未激活",color:"green",bold:true}]
$execute if score @s tianshenshibanjia_xiansheng matches 12..23 run bossbar set kards:xiansheng_$(UUID) name [{text:"显圣",color:"gold",bold:true},{score:{name:"@s",objective:"tianshenshibanjia_xiansheng"},color:"gold",bold:true},{text:"层",color:"gold",bold:true},{text:" | ",color:"gray",bold:true},{text:"抗性提升 I",color:"green",bold:true}]
$execute if score @s tianshenshibanjia_xiansheng matches 24..35 run bossbar set kards:xiansheng_$(UUID) name [{text:"显圣",color:"gold",bold:true},{score:{name:"@s",objective:"tianshenshibanjia_xiansheng"},color:"gold",bold:true},{text:"层",color:"gold",bold:true},{text:" | ",color:"gray",bold:true},{text:"抗性提升 II",color:"green",bold:true}]
$execute if score @s tianshenshibanjia_xiansheng matches 36..47 run bossbar set kards:xiansheng_$(UUID) name [{text:"显圣",color:"gold",bold:true},{score:{name:"@s",objective:"tianshenshibanjia_xiansheng"},color:"gold",bold:true},{text:"层",color:"gold",bold:true},{text:" | ",color:"gray",bold:true},{text:"抗性提升 III",color:"green",bold:true}]
$execute if score @s tianshenshibanjia_xiansheng matches 48..59 run bossbar set kards:xiansheng_$(UUID) name [{text:"显圣",color:"gold",bold:true},{score:{name:"@s",objective:"tianshenshibanjia_xiansheng"},color:"gold",bold:true},{text:"层",color:"gold",bold:true},{text:" | ",color:"gray",bold:true},{text:"抗性提升 IV",color:"green",bold:true}]
$execute if score @s tianshenshibanjia_xiansheng matches 60.. run bossbar set kards:xiansheng_$(UUID) name [{text:"显圣",color:"gold",bold:true},{score:{name:"@s",objective:"tianshenshibanjia_xiansheng"},color:"gold",bold:true},{text:"层",color:"gold",bold:true},{text:" | ",color:"gray",bold:true},{text:"抗性提升 V",color:"green",bold:true}]

$bossbar set kards:xiansheng_$(UUID) color white
$bossbar set kards:xiansheng_$(UUID) players @s
$bossbar set kards:xiansheng_$(UUID) visible true
$bossbar set kards:xiansheng_$(UUID) max 1
$bossbar set kards:xiansheng_$(UUID) value 1

execute unless entity @s[tag=tianshenshibanjia] run tag @s remove tianshenshibanjia_Bossbar
$execute unless entity @s[tag=tianshenshibanjia] run bossbar remove kards:xiansheng_$(UUID)
