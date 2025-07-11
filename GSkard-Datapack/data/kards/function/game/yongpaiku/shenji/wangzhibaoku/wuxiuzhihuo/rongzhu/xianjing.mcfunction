scoreboard players add @s wuxiuzhihuo_shengji 2
scoreboard players set @s wuxiuzhihuo_rongzhu 0
tellraw @s {text: "无休之火熔铸了1张陷阱牌 成长点数+2",color:"gray"}
execute at @s run kill @n[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},Age:0s}]
function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/all
