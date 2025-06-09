#陷阱牌
execute if entity @s[team=red] if score @s kardCount >= #kard_laizishenchu kardCount if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'来自深处'}] unless score 蓝队 xianjin_laizishenchu matches 1 run function kards:game/yongpaiku/xianjin/used/laizishenchu
execute if entity @s[team=blue] if score @s kardCount >= #kard_laizishenchu kardCount if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'来自深处'}] if score 红队 xianjin_laizishenchu matches 1 run function kards:game/yongpaiku/xianjin/used/laizishenchu

execute as @a[scores={kardCount=2..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'合围'}] unless score 蓝队 xianjin_hewei matches 1 run function kards:game/yongpaiku/xianjin/used/hewei
execute as @a[scores={kardCount=2..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'合围'}] if score 红队 xianjin_hewei matches 1 run function kards:game/yongpaiku/xianjin/used/hewei

execute as @a[scores={kardCount=3..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'施法小鬼'}] unless score 蓝队 xianjin_shifaxiaogui matches 1 run function kards:game/yongpaiku/xianjin/used/shifaxiaogui
execute as @a[scores={kardCount=3..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'施法小鬼'}] if score 红队 xianjin_shifaxiaogui matches 1 run function kards:game/yongpaiku/xianjin/used/shifaxiaogui

execute as @a[scores={kardCount=4..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'惊吓盒子'}] unless score 蓝队 xianjin_jingxiahezi matches 1 run function kards:game/yongpaiku/xianjin/used/jingxiahezi
execute as @a[scores={kardCount=4..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'惊吓盒子'}] if score 红队 xianjin_jingxiahezi matches 1 run function kards:game/yongpaiku/xianjin/used/jingxiahezi

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'魔力腐蚀'}] unless score 蓝队 xianjin_molifushi matches 1 run function kards:game/yongpaiku/xianjin/used/molifushi
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'魔力腐蚀'}] if score 红队 xianjin_molifushi matches 1 run function kards:game/yongpaiku/xianjin/used/molifushi

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'殊死防守'}] unless score 蓝队 xianjin_shusifangshou matches 1 run function kards:game/yongpaiku/xianjin/used/shusifangshou
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'殊死防守'}] if score 红队 xianjin_shusifangshou matches 1 run function kards:game/yongpaiku/xianjin/used/shusifangshou

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'损耗过度'}] unless score 蓝队 xianjin_sunhaoguodu matches 1 run function kards:game/yongpaiku/xianjin/used/sunhaoguodu
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'损耗过度'}] if score 红队 xianjin_sunhaoguodu matches 1 run function kards:game/yongpaiku/xianjin/used/sunhaoguodu

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'术法失效'}] unless score 蓝队 xianjin_shufashixiao matches 1 run function kards:game/yongpaiku/xianjin/used/shufashixiao
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'术法失效'}] if score 红队 xianjin_shufashixiao matches 1 run function kards:game/yongpaiku/xianjin/used/shufashixiao

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'遥远的桥'}] unless score 蓝队 xianjin_yaoyuandeqiao matches 1 run function kards:game/yongpaiku/xianjin/used/yaoyuandeqiao
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'遥远的桥'}] if score 红队 xianjin_yaoyuandeqiao matches 1 run function kards:game/yongpaiku/xianjin/used/yaoyuandeqiao

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'诱敌'}] unless score 蓝队 xianjin_youdi matches 1 run function kards:game/yongpaiku/xianjin/used/youdi
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'诱敌'}] if score 红队 xianjin_youdi matches 1 run function kards:game/yongpaiku/xianjin/used/youdi

execute as @a[scores={kardCount=6..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'千钧一发'}] unless score 蓝队 xianjin_qianjunyifa matches 1 run function kards:game/yongpaiku/xianjin/used/qianjunyifa
execute as @a[scores={kardCount=6..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'千钧一发'}] if score 红队 xianjin_qianjunyifa matches 1 run function kards:game/yongpaiku/xianjin/used/qianjunyifa

execute as @a[scores={kardCount=7..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'轻虑浅谋'}] unless score 蓝队 xianjin_qinglvqianmou matches 1 run function kards:game/yongpaiku/xianjin/used/qinglvqianmou
execute as @a[scores={kardCount=7..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'轻虑浅谋'}] if score 红队 xianjin_qinglvqianmou matches 1 run function kards:game/yongpaiku/xianjin/used/qinglvqianmou

execute as @a[scores={kardCount=8..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'偷梁换柱'}] unless score 蓝队 xianjin_toulianghuanzhu matches 1 run function kards:game/yongpaiku/xianjin/used/toulianghuanzhu
execute as @a[scores={kardCount=8..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'偷梁换柱'}] if score 红队 xianjin_toulianghuanzhu matches 1 run function kards:game/yongpaiku/xianjin/used/toulianghuanzhu