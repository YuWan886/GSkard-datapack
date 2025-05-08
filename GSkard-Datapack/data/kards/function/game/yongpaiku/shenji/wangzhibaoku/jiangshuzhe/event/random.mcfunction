execute if entity @a[tag=jiangshuzhe,team=red] run tellraw @a [{"text": "由","color": "gray"},{"selector": "@s"},{"text": "讲述本回合的故事","color": "gray"}]
execute store result score @s jiangshuzhe_random1 run random value 1..13
execute if score @s jiangshuzhe_random1 matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/fanrong_kapai
execute if score @s jiangshuzhe_random1 matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/fanrong_dianshu
execute if score @s jiangshuzhe_random1 matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/fanrong_shengming
execute if score @s jiangshuzhe_random1 matches 4 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zainan_leibao
execute if score @s jiangshuzhe_random1 matches 5 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zainan_shizhong
execute if score @s jiangshuzhe_random1 matches 6 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zainan_hetun
execute if score @s jiangshuzhe_random1 matches 7 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zhexue_liliang
execute if score @s jiangshuzhe_random1 matches 8 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zhexue_sudu
execute if score @s jiangshuzhe_random1 matches 9 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zhexue_yinshen
execute if score @s jiangshuzhe_random1 matches 10 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zhexue_diyu
execute if score @s jiangshuzhe_random1 matches 11 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/bolun
execute if score @s jiangshuzhe_random1 matches 12 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zainan_jixing
execute if score @s jiangshuzhe_random1 matches 13 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zainan_silie
scoreboard players set @s jiangshuzhe_random1 0
