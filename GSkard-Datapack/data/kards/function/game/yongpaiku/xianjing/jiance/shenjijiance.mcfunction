
#侦测贝
execute if entity @s[team=red] if entity @e[tag=tuteng,team=red,type=shulker] run return run damage @n[tag=tuteng,team=red,type=shulker] 2 out_of_world
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return run damage @n[tag=tuteng,team=blue,type=shulker] 2 out_of_world
#来自深处
execute if entity @s[team=red] if score 红队 xianjin_laizishenchu matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/laizishenchu
execute if entity @s[team=blue] if score 蓝队 xianjin_laizishenchu matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/laizishenchu

#千钧一发
execute if entity @s[team=red] if score 红队 xianjin_qianjunyifa matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/qianjunyifa
execute if entity @s[team=blue] if score 蓝队 xianjin_qianjunyifa matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/qianjunyifa