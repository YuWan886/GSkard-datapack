execute store result score @s wangzhibaoku run random value 1..12
execute if score @s wangzhibaoku matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyizhichui
execute if score @s wangzhibaoku matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan
execute if score @s wangzhibaoku matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/senlinzhihu
execute if score @s wangzhibaoku matches 4 run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian
execute if score @s wangzhibaoku matches 5 run function kards:game/yongpaiku/shenji/wangzhibaoku/shizhongjian
execute if score @s wangzhibaoku matches 6 run function kards:game/yongpaiku/shenji/wangzhibaoku/qinglingzhiyu
execute if score @s wangzhibaoku matches 7 run function kards:game/yongpaiku/shenji/wangzhibaoku/jinghuashuijing
execute if score @s wangzhibaoku matches 8 run function kards:game/yongpaiku/shenji/wangzhibaoku/yanhuanu
execute if score @s wangzhibaoku matches 9 run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/give
execute if score @s wangzhibaoku matches 10 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/give
execute if score @s wangzhibaoku matches 11 run function kards:game/yongpaiku/shenji/wangzhibaoku/feishenghufu
execute if score @s wangzhibaoku matches 12 run function kards:game/yongpaiku/shenji/wangzhibaoku/chuancichangji/give
scoreboard players set @s wangzhibaoku 0