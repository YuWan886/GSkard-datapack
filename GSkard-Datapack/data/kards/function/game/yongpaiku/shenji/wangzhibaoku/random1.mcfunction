execute unless score system status matches 0 run execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[王之宝库]","color":"white","hoverEvent":{"action":"show_text","value":"抽取一次王之宝库"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
execute store result score @s wangzhibaoku run random value 1..14
execute if score @s wangzhibaoku matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyizhichui/give
execute if score @s wangzhibaoku matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/give
execute if score @s wangzhibaoku matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/senlinzhihu
execute if score @s wangzhibaoku matches 4 run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/give
execute if score @s wangzhibaoku matches 5 run function kards:game/yongpaiku/shenji/wangzhibaoku/shizhongjian/give
execute if score @s wangzhibaoku matches 6 run function kards:game/yongpaiku/shenji/wangzhibaoku/qinglingzhiyu/give
execute if score @s wangzhibaoku matches 7 run function kards:game/yongpaiku/shenji/wangzhibaoku/jinghuashuijing
execute if score @s wangzhibaoku matches 8 run function kards:game/yongpaiku/shenji/wangzhibaoku/lindongzhikai/give
execute if score @s wangzhibaoku matches 9 run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia
execute if score @s wangzhibaoku matches 10 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/give
execute if score @s wangzhibaoku matches 11 run function kards:game/yongpaiku/shenji/wangzhibaoku/feishenghufu
execute if score @s wangzhibaoku matches 12 run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyichangji/give
execute if score @s wangzhibaoku matches 13 run function kards:game/yongpaiku/shenji/wangzhibaoku/jishengnianye/give
execute if score @s wangzhibaoku matches 14 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/give
scoreboard players set @s wangzhibaoku 0
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 12
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1