
scoreboard players add @s wuxiuzhihuo_shengji 3
scoreboard players set @s wuxiuzhihuo_rongzhu 0
tellraw @s {text: "无休之火熔铸了1张法术牌 成长点数+3",color:"gray"}
execute at @s run kill @n[type=item,nbt={Item:{id:"minecraft:music_disc_mellohi"},Age:0s}]

function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/all