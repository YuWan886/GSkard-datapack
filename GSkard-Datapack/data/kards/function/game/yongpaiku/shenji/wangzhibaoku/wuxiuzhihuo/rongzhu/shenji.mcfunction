
scoreboard players add @s wuxiuzhihuo_shengji 9
scoreboard players set @s wuxiuzhihuo_rongzhu 0
tellraw @s {translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.wuxiuzhihuo.rongzhu.shenji.1", fallback: "无休之火熔铸了1张神迹牌 成长点数+9",color:"gray"}
execute at @s run kill @n[type=item,nbt={Item:{id:"minecraft:music_disc_strad"},Age:0s}]
function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/all