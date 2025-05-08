execute store result score @s random6 run random value 1..13
execute if score @s random6 matches 1 run function kards:game/paiku/shenji/huoliquankai
execute if score @s random6 matches 2 run function kards:game/paiku/shenji/juechufengsheng
execute if score @s random6 matches 3 run function kards:game/paiku/shenji/linghungeshe
execute if score @s random6 matches 4 run function kards:game/paiku/shenji/shenglihaojiao
execute if score @s random6 matches 5 run function kards:game/paiku/shenji/shikongbengta
execute if score @s random6 matches 6 run function kards:game/paiku/shenji/xukonghuixiang
execute if score @s random6 matches 7 run function kards:game/paiku/shenji/youanjianglin
execute if score @s random6 matches 8 run function kards:game/paiku/shenji/feileishen
execute if score @s random6 matches 9 run function kards:game/paiku/shenji/wangzhibaoku
execute if score @s random6 matches 10 run function kards:game/paiku/shenji/jinfajiejie
execute if score @s random6 matches 11 run function kards:game/paiku/shenji/muyuankuanghuan
execute if score @s random6 matches 12 run function kards:game/paiku/shenji/lairichanghuan
execute if score @s random6 matches 13 run function kards:game/paiku/shenji/haogaowuyuan
scoreboard players set @s random6 0
scoreboard players remove @s shenjicishu 1