scoreboard players add @s wuxiuzhihuo_shengji 9
scoreboard players set @s wuxiuzhihuo_rongzhu 0
tellraw @s {"text":"无休之火熔铸了1张神迹牌 成长点数+9","color":"gray"}
execute at @s run kill @n[type=item]
function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/all