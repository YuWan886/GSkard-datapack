
scoreboard players set @s diaolingtaidao_tujing 17
scoreboard players add @s diaolingtaidao_diaoxiezhihua_give 1
tellraw @s[scores={diaolingtaidao_diaoxiezhihua_give=..7}] [{text:"[凋零太刀]",color:"dark_gray"},{text:"『凋谢之花』 ",color:"gray"},{score:{name:"@s",objective:"diaolingtaidao_diaoxiezhihua_give"},color:"gray"},{text:"/",color:"gray"},{text:"8",color:"green"}]
execute if score @s diaolingtaidao_diaoxiezhihua_give matches 8 run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/5

scoreboard players reset @s diaolingtaidao
execute at @s anchored eyes positioned ^ ^ ^0.25 run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/2