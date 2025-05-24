scoreboard players add @s wuxiuzhihuo_shengji 3
scoreboard players set @s wuxiuzhihuo_rongzhu 0
tellraw @s {translate: "game.yongpaiku.shenji.wangzhibaoku.wuxiuzhihuo.rongzhu.juntuan.1",color:"gray"}
execute at @s run kill @n[type=item]
function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/all