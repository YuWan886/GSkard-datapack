
#魔盒
execute if entity @s[type=!player] run return fail
#侦测贝
execute if entity @s[team=red] if entity @e[tag=tuteng,team=red,type=shulker] run return run damage @n[tag=tuteng,team=red,type=shulker] 2 out_of_world
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return run damage @n[tag=tuteng,team=blue,type=shulker] 2 out_of_world
#<损耗过度>
execute if entity @s[team=red] if score 红队 xianjin_sunhaoguodu matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/sunhaoguodu
execute if entity @s[team=blue] if score 蓝队 xianjin_sunhaoguodu matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/sunhaoguodu

#<殊死防守>
execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/shusifangshou
execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/shusifangshou

#<合围>
execute if entity @s[team=red] if score 红队 xianjin_hewei matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/hewei
execute if entity @s[team=blue] if score 蓝队 xianjin_hewei matches 1 at @s run function kards:game/yongpaiku/xianjing/chufa/hewei

#DLC
function kards-dlc:kard/type/xianjing/check/mob