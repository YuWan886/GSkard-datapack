<<<<<<< HEAD
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
execute if score @s random6 matches 14 run function kards:game/paiku/shenji/lingjia
execute if score @s random6 matches 15 run function kards:game/paiku/shenji/fuzhi
execute if score @s random6 matches 16 run function kards:game/paiku/shenji/fanxiangfeileishen
=======
execute as @s store result score @s random6 run random value 1..16
execute as @s if score @s random6 matches 1 run function kards:game/paiku/shenji/huoliquankai
execute as @s if score @s random6 matches 2 run function kards:game/paiku/shenji/juechufengsheng
execute as @s if score @s random6 matches 3 run function kards:game/paiku/shenji/linghungeshe
execute as @s if score @s random6 matches 4 run function kards:game/paiku/shenji/shenglihaojiao
execute as @s if score @s random6 matches 5 run function kards:game/paiku/shenji/shikongbengta
execute as @s if score @s random6 matches 6 run function kards:game/paiku/shenji/xukonghuixiang
execute as @s if score @s random6 matches 7 run function kards:game/paiku/shenji/youanjianglin
execute as @s if score @s random6 matches 8 run function kards:game/paiku/shenji/feileishen
execute as @s if score @s random6 matches 9 run function kards:game/paiku/shenji/wangzhibaoku
execute as @s if score @s random6 matches 10 run function kards:game/paiku/shenji/jinfajiejie
execute as @s if score @s random6 matches 11 run function kards:game/paiku/shenji/muyuankuanghuan
execute as @s if score @s random6 matches 12 run function kards:game/paiku/shenji/lairichanghuan
execute as @s if score @s random6 matches 13 run function kards:game/paiku/shenji/haogaowuyuan
execute as @s if score @s random6 matches 14 run function kards:game/paiku/shenji/lingjia
execute as @s if score @s random6 matches 15 run function kards:game/paiku/shenji/fuzhi
execute as @s if score @s random6 matches 16 run function kards:game/paiku/shenji/fanxiangfeileishen
>>>>>>> c337d2e (加入一些卡牌)
scoreboard players set @s random6 0
scoreboard players remove @s shenjicishu 1