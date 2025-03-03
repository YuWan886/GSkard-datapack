execute as @s store result score @s random3 run random value 1..350
execute as @s if score @s random3 matches 1..25 run function kards:game/paiku/zhuangbei/jinjian
execute as @s if score @s random3 matches 26..45 run function kards:game/paiku/zhuangbei/tiejian
execute as @s if score @s random3 matches 46..60 run function kards:game/paiku/zhuangbei/zuanshijian
execute as @s if score @s random3 matches 61..65 run function kards:game/paiku/zhuangbei/xiajiehejinjian
execute as @s if score @s random3 matches 66..75 run function kards:game/paiku/zhuangbei/dunpai
execute as @s if score @s random3 matches 76..115 run function kards:game/paiku/zhuangbei/jinshengji
execute as @s if score @s random3 matches 116..140 run function kards:game/paiku/zhuangbei/tieshengji
execute as @s if score @s random3 matches 141..160 run function kards:game/paiku/zhuangbei/zuanshishengji
execute as @s if score @s random3 matches 161..170 run function kards:game/paiku/zhuangbei/xiajiehejinshengji
execute as @s if score @s random3 matches 171..185 run function kards:game/paiku/zhuangbei/tiefu
execute as @s if score @s random3 matches 186..195 run function kards:game/paiku/zhuangbei/zuanshifu
execute as @s if score @s random3 matches 196..205 run function kards:game/paiku/zhuangbei/busituteng
execute as @s if score @s random3 matches 206..225 run function kards:game/paiku/zhuangbei/weihu
execute as @s if score @s random3 matches 226..250 run function kards:game/paiku/zhuangbei/longxi
execute as @s if score @s random3 matches 251..350 run function kards:game/ingame/choupai/3.1
scoreboard players set @s random3 0
scoreboard players remove @s zhuangbeicishu 1