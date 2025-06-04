
execute store result score @s wangzhibaoku run random value 1..14
execute if score @s wangzhibaoku matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/give
execute if score @s wangzhibaoku matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/give
execute if score @s wangzhibaoku matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/senlinzhihu
execute if score @s wangzhibaoku matches 4 run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/give
execute if score @s wangzhibaoku matches 5 run function kards:game/yongpaiku/shenji/wangzhibaoku/shizhongjian/give
execute if score @s wangzhibaoku matches 6 run function kards:game/yongpaiku/shenji/wangzhibaoku/qinglingzhiyu/give
execute if score @s wangzhibaoku matches 7 run function kards:game/yongpaiku/shenji/wangzhibaoku/xiangzhaoyushi
execute if score @s wangzhibaoku matches 8 run function kards:game/yongpaiku/shenji/wangzhibaoku/lindongzhikai/give
execute if score @s wangzhibaoku matches 9 run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/give
execute if score @s wangzhibaoku matches 10 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/give
execute if score @s wangzhibaoku matches 11 run function kards:game/yongpaiku/shenji/wangzhibaoku/feishenghufu
execute if score @s wangzhibaoku matches 12 run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyichangji/give
execute if score @s wangzhibaoku matches 13 run function kards:game/yongpaiku/shenji/wangzhibaoku/jishengnianye/give
execute if score @s wangzhibaoku matches 14 run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/give
scoreboard players set @s wangzhibaoku 0

