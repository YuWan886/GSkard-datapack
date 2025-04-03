<<<<<<< HEAD
execute unless score #system GameStatus matches 2 if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'飞雷神'}] if score @s kardCount >= #kard_feileishen kardCount run function kards:game/yongpaiku/shenji/feileishen/1
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'好高骛远'}] if score @s kardCount >= #kard_haogaowuyuan kardCount run function kards:game/yongpaiku/shenji/haogaowuyuan
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'火力全开'}] if score @s kardCount >= #kard_huoliquankai kardCount run function kards:game/yongpaiku/shenji/huoliquankai
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'墓园狂欢'}] if score @s kardCount >= #kard_muyuankuanghuan kardCount run function kards:game/yongpaiku/shenji/muyuankuanghuan
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'胜利号角'}] if score @s kardCount >= #kard_shenglihaojiao kardCount run function kards:game/yongpaiku/shenji/shenglihaojiao
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'虚空回响'}] if score @s kardCount >= #kard_xukonghuixiang kardCount run function kards:game/yongpaiku/shenji/xukonghuixiang
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'时空崩塌'}] if score @s kardCount >= #kard_shikongbengta kardCount run function kards:game/yongpaiku/shenji/shikongbengta
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'来日偿还'}] if score @s kardCount >= #kard_lairichanghuan kardCount if score @s changhuan_times matches 0 run function kards:game/yongpaiku/shenji/lairichanghuan/1
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'灵魂割舍'}] if score @s kardCount >= #kard_linghungeshe kardCount run function kards:game/yongpaiku/shenji/linghungeshe
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'禁法结界'}] if score @s kardCount >= #kard_jinfajiejie kardCount run function kards:game/yongpaiku/shenji/jinfajiejie
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'绝处逢生'}] if score @s kardCount >= #kard_juechufengsheng kardCount run function kards:game/yongpaiku/shenji/juechufengsheng
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'王之宝库'}] if score @s kardCount >= #kard_wangzhibaoku kardCount run function kards:game/yongpaiku/shenji/wangzhibaoku/random1
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'幽谙降临'}] if score @s kardCount >= #kard_youanjianglin kardCount run function kards:game/yongpaiku/shenji/youanjianglin/1
=======
execute as @a[scores={kardCount=0..,canuse=1}] unless score system status matches 2 if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'飞雷神'}] run function kards:game/yongpaiku/shenji/feileishen/1
execute as @a[scores={kardCount=0..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'好高骛远'}] run function kards:game/yongpaiku/shenji/haogaowuyuan
execute as @a[scores={kardCount=0..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'火力全开'}] run function kards:game/yongpaiku/shenji/huoliquankai
execute as @a[scores={kardCount=0..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'墓园狂欢'}] run function kards:game/yongpaiku/shenji/muyuankuanghuan
execute as @a[scores={kardCount=2..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'胜利号角'}] run function kards:game/yongpaiku/shenji/shenglihaojiao
execute as @a[scores={kardCount=3..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'虚空回响'}] run function kards:game/yongpaiku/shenji/xukonghuixiang
execute as @a[scores={kardCount=4..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'时空崩塌'}] run function kards:game/yongpaiku/shenji/shikongbengta
execute as @a[scores={kardCount=5..,canuse=1,changhuan_times=0}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'来日偿还'}] run function kards:game/yongpaiku/shenji/lairichanghuan/1
execute as @a[scores={kardCount=5..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'灵魂割舍'}] run function kards:game/yongpaiku/shenji/linghungeshe
execute as @a[scores={kardCount=8..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'禁法结界'}] run function kards:game/yongpaiku/shenji/jinfajiejie
execute as @a[scores={kardCount=10..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'绝处逢生'}] run function kards:game/yongpaiku/shenji/juechufengsheng
execute as @a[scores={kardCount=12..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'王之宝库'}] run function kards:game/yongpaiku/shenji/wangzhibaoku/random1
execute as @a[scores={kardCount=20..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'幽谙降临'}] run function kards:game/yongpaiku/shenji/youanjianglin/1
execute as @a[scores={kardCount=10..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'凌驾'}] run function kards:game/yongpaiku/shenji/lingjia
execute as @a[scores={kardCount=0..,canuse=1}] unless items entity @s container.0 air unless items entity @s container.0 #minecraft:creeper_drop_music_discs[custom_data={kards:'复制'}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'复制'}] run function kards:game/yongpaiku/shenji/fuzhi
execute as @a[scores={kardCount=0..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'飞雷神•反'}] run function kards:game/yongpaiku/shenji/feileishenfan/1
execute as @a[scores={kardCount=0..,canuse=1}] if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'无用•神'}] run function kards:game/yongpaiku/shenji/wuyongshen
>>>>>>> c337d2e (加入一些卡牌)
