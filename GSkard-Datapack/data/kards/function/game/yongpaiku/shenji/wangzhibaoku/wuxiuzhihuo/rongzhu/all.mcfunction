
execute if score @s wuxiuzhihuo_shengji matches 1..45 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/1
execute if score @s wuxiuzhihuo_shengji matches 46..90 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/2
execute if score @s wuxiuzhihuo_shengji matches 91..135 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/3
execute if score @s wuxiuzhihuo_shengji matches 136..180 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/4
execute if score @s wuxiuzhihuo_shengji matches 181..350 run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/5
execute if score @s wuxiuzhihuo_shengji matches 351.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/choupai/6
execute if score @s wuxiuzhihuo_shengji matches 180.. run advancement grant @s only kards:chengjiu/wuxiuzhihuo/1
execute if score @s wuxiuzhihuo_shengji matches 700.. run advancement grant @s only kards:chengjiu/wuxiuzhihuo/2
execute at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 100 0.5