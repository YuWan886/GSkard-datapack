execute as @s store result score @s random8 run random value 1..13
execute as @s if score @s random8 matches 1 run function kards:game/paiku/xianjing/shufashixiao
execute as @s if score @s random8 matches 2 run function kards:game/paiku/xianjing/shifaxiaogui
execute as @s if score @s random8 matches 3 run function kards:game/paiku/xianjing/jingxiahezi
execute as @s if score @s random8 matches 4 run function kards:game/paiku/xianjing/molifushi
execute as @s if score @s random8 matches 5 run function kards:game/paiku/xianjing/sunhaoguodu
execute as @s if score @s random8 matches 6 run function kards:game/paiku/xianjing/shusifangshou
execute as @s if score @s random8 matches 7 run function kards:game/paiku/xianjing/hewei
execute as @s if score @s random8 matches 8 run function kards:game/paiku/xianjing/yaoyuandeqiao
execute as @s if score @s random8 matches 9 run function kards:game/paiku/xianjing/laizishenchu
execute as @s if score @s random8 matches 10 run function kards:game/paiku/xianjing/qinglvqianmou
execute as @s if score @s random8 matches 11 run function kards:game/paiku/xianjing/youdi
execute as @s if score @s random8 matches 12 run function kards:game/paiku/xianjing/qianjunyifa
execute as @s if score @s random8 matches 13 run function kards:game/paiku/xianjing/toulianghuanzhu
scoreboard players set @s random8 0
scoreboard players remove @s xianjingcishu 1