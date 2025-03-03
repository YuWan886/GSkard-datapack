function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/4.1

execute store result score @s wuxiuzhihuo_random run random value 1..100
execute if score @s wuxiuzhihuo_random matches 1..70 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/4.1

execute store result score @s wuxiuzhihuo_random run random value 1..40
execute if score @s wuxiuzhihuo_random matches 1..40 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/4.1