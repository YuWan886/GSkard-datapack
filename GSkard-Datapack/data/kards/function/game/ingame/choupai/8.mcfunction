execute store result score @s random8 run random value 1..13
execute if score @s random8 matches 1 run function kards:game/paiku/xianjin/shufashixiao
execute if score @s random8 matches 2 run function kards:game/paiku/xianjin/shifaxiaogui
execute if score @s random8 matches 3 run function kards:game/paiku/xianjin/jingxiahezi
execute if score @s random8 matches 4 run function kards:game/paiku/xianjin/molifushi
execute if score @s random8 matches 5 run function kards:game/paiku/xianjin/sunhaoguodu
execute if score @s random8 matches 6 run function kards:game/paiku/xianjin/shusifangshou
execute if score @s random8 matches 7 run function kards:game/paiku/xianjin/hewei
execute if score @s random8 matches 8 run function kards:game/paiku/xianjin/yaoyuandeqiao
execute if score @s random8 matches 9 run function kards:game/paiku/xianjin/laizishenchu
execute if score @s random8 matches 10 run function kards:game/paiku/xianjin/qinglvqianmou
execute if score @s random8 matches 11 run function kards:game/paiku/xianjin/youdi
execute if score @s random8 matches 12 run function kards:game/paiku/xianjin/qianjunyifa
execute if score @s random8 matches 13 run function kards:game/paiku/xianjin/toulianghuanzhu
scoreboard players set @s random8 0
scoreboard players remove @s xianjincishu 1