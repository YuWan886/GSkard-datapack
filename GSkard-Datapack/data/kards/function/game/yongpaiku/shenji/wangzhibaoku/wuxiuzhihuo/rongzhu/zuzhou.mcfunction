scoreboard players remove @s wuxiuzhihuo_shengji 1
scoreboard players set @s wuxiuzhihuo_rongzhu 0
tellraw @s {"text":"无休之火熔铸了1张诅咒牌 成长点数-1","color":"gray"}
execute at @s run kill @n[type=item]
function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/all