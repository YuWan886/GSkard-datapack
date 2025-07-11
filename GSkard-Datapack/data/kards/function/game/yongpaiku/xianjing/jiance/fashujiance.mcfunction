
#侦测贝
execute if entity @s[team=red] if entity @e[tag=tuteng,team=red,type=shulker] run return run damage @n[tag=tuteng,team=red,type=shulker] 2 out_of_world
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return run damage @n[tag=tuteng,team=blue,type=shulker] 2 out_of_world
#<偷梁换柱>
execute if entity @s[team=red] if score 红队 xianjin_toulianghuanzhu matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/toulianghuanzhu
execute if entity @s[team=blue] if score 蓝队 xianjin_toulianghuanzhu matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/toulianghuanzhu
#施法小鬼
execute if entity @s[team=red] if score 红队 xianjin_shifaxiaogui matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/shifaxiaogui
execute if entity @s[team=blue] if score 蓝队 xianjin_shifaxiaogui matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/shifaxiaogui

#惊吓盒子
execute if entity @s[team=red] if score 红队 xianjin_jingxiahezi matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/jingxiahezi
execute if entity @s[team=blue] if score 蓝队 xianjin_jingxiahezi matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/jingxiahezi

#魔力腐蚀
execute if entity @s[team=red] if score 红队 xianjin_molifushi matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/molifushi
execute if entity @s[team=blue] if score 蓝队 xianjin_molifushi matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/molifushi

#术法失效
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/shufashixiao
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/shufashixiao

#<诱敌>
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/youdi
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/youdi

