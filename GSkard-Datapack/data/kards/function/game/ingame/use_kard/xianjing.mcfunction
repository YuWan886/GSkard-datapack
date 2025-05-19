#陷阱牌
execute as @a[scores={kardCount=2..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'来自深处'}] if score 蓝队 xianjin_laizishenchu matches 0 run function kards:game/yongpaiku/xianjin/laizishenchu
execute as @a[scores={kardCount=2..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'来自深处'}] if score 红队 xianjin_laizishenchu matches 0 run function kards:game/yongpaiku/xianjin/laizishenchu

execute as @a[scores={kardCount=2..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'合围'}] if score 蓝队 xianjin_hewei matches 0 run function kards:game/yongpaiku/xianjin/hewei
execute as @a[scores={kardCount=2..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'合围'}] if score 红队 xianjin_hewei matches 0 run function kards:game/yongpaiku/xianjin/hewei

execute as @a[scores={kardCount=3..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'施法小鬼'}] if score 蓝队 xianjin_shifaxiaogui matches 0 run function kards:game/yongpaiku/xianjin/shifaxiaogui
execute as @a[scores={kardCount=3..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'施法小鬼'}] if score 红队 xianjin_shifaxiaogui matches 0 run function kards:game/yongpaiku/xianjin/shifaxiaogui

execute as @a[scores={kardCount=4..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'惊吓盒子'}] if score 蓝队 xianjin_jingxiahezi matches 0 run function kards:game/yongpaiku/xianjin/jingxiahezi
execute as @a[scores={kardCount=4..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'惊吓盒子'}] if score 红队 xianjin_jingxiahezi matches 0 run function kards:game/yongpaiku/xianjin/jingxiahezi

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'魔力腐蚀'}] if score 蓝队 xianjin_molifushi matches 0 run function kards:game/yongpaiku/xianjin/molifushi
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'魔力腐蚀'}] if score 红队 xianjin_molifushi matches 0 run function kards:game/yongpaiku/xianjin/molifushi

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'殊死防守'}] if score 蓝队 xianjin_shusifangshou matches 0 run function kards:game/yongpaiku/xianjin/shusifangshou
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'殊死防守'}] if score 红队 xianjin_shusifangshou matches 0 run function kards:game/yongpaiku/xianjin/shusifangshou

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'损耗过度'}] if score 蓝队 xianjin_sunhaoguodu matches 0 run function kards:game/yongpaiku/xianjin/sunhaoguodu
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'损耗过度'}] if score 红队 xianjin_sunhaoguodu matches 0 run function kards:game/yongpaiku/xianjin/sunhaoguodu

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'术法失效'}] if score 蓝队 xianjin_shufashixiao matches 0 run function kards:game/yongpaiku/xianjin/shufashixiao
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'术法失效'}] if score 红队 xianjin_shufashixiao matches 0 run function kards:game/yongpaiku/xianjin/shufashixiao

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'遥远的桥'}] if score 蓝队 xianjin_yaoyuandeqiao matches 0 run function kards:game/yongpaiku/xianjin/yaoyuandeqiao
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'遥远的桥'}] if score 红队 xianjin_yaoyuandeqiao matches 0 run function kards:game/yongpaiku/xianjin/yaoyuandeqiao

execute as @a[scores={kardCount=5..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'诱敌'}] if score 蓝队 xianjin_youdi matches 0 run function kards:game/yongpaiku/xianjin/youdi
execute as @a[scores={kardCount=5..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'诱敌'}] if score 红队 xianjin_youdi matches 0 run function kards:game/yongpaiku/xianjin/youdi

execute as @a[scores={kardCount=6..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'千钧一发'}] if score 蓝队 xianjin_qianjunyifa matches 0 run function kards:game/yongpaiku/xianjin/qianjunyifa
execute as @a[scores={kardCount=6..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'千钧一发'}] if score 红队 xianjin_qianjunyifa matches 0 run function kards:game/yongpaiku/xianjin/qianjunyifa

execute as @a[scores={kardCount=7..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'轻虑浅谋'}] if score 蓝队 xianjin_qinglvqianmou matches 0 run function kards:game/yongpaiku/xianjin/qinglvqianmou
execute as @a[scores={kardCount=7..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'轻虑浅谋'}] if score 红队 xianjin_qinglvqianmou matches 0 run function kards:game/yongpaiku/xianjin/qinglvqianmou

execute as @a[scores={kardCount=8..,CanuseKard=1},team=red] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'偷梁换柱'}] if score 蓝队 xianjin_toulianghuanzhu matches 0 run function kards:game/yongpaiku/xianjin/toulianghuanzhu
execute as @a[scores={kardCount=8..,CanuseKard=1},team=blue] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'偷梁换柱'}] if score 红队 xianjin_toulianghuanzhu matches 0 run function kards:game/yongpaiku/xianjin/toulianghuanzhu