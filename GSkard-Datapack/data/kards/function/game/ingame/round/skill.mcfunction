#正义之锤
scoreboard players set @a[tag=zhengyizhichui] used_zhengyizhichui1 1
#讲述者
execute as @a[tag=jiangshuzhe] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/random
#无休之火
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo matches 5 run tag @s add fire
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo matches 5 run scoreboard players add @s fire 100
scoreboard players set @a[tag=wuxiuzhihuo] wuxiuzhihuo 5
#阳炎大剑
execute as @a[tag=yanyangdajian] run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/6