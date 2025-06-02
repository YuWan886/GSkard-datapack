#狂欢僵尸
execute if items entity @s weapon.offhand *[custom_data={kards:'狂欢僵尸'}] if score @s kardCount >= #kard_kuanghuanzombie kardCount run function kards:game/yongpaiku/yansheng/kuanghuanzombie
#龙息
execute if items entity @s weapon.offhand *[custom_data={kards:'龙息'}] run function kards:game/yongpaiku/yansheng/longxi
#禁字决
execute unless entity @a[scores={jinzijue=10}] if items entity @s weapon.offhand redstone[custom_data={kards:'禁字决'}] if score @s kardCount >= #kard_jinzijue kardCount run function kards:game/yongpaiku/yansheng/jinzijue/1
execute if items entity @s weapon.offhand *[custom_data={kards:'龙息'}] run function kards:game/yongpaiku/yansheng/longxi
#火球骰子
execute if items entity @s weapon.offhand *[custom_data={kards:'火球骰子'}] if score @s kardCount >= #kard_huoqiushaizi kardCount run function kards:game/yongpaiku/yansheng/huoqiutouzi/1
#焰火骑士团
execute if items entity @s weapon.offhand *[custom_data={kards:'焰火骑士团'}] if score @s kardCount >= #kard_yanhuoqishituan kardCount run function kards:game/yongpaiku/yansheng/yanhuoqishituan
#君临天下
execute if items entity @s weapon.offhand nether_star[custom_data={kards:'君临天下'}] run function kards:game/yongpaiku/yansheng/junlintianxia/jy0
#无用
execute if score @s CanuseKard matches 1 if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'无用之基'}] if score @s kardCount >= #kard_wuyongjiben kardCount run function kards:game/yongpaiku/jiben/wuyongji
execute if score @s CanuseKard matches 1 if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'无用之法'}] if score @s kardCount >= #kard_wuyongfashu kardCount run function kards:game/yongpaiku/fashu/wuyongfa
execute if score @s CanuseKard matches 1 if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data={kards:'无用之神'}] if score @s kardCount >= #kard_wuyongshenji kardCount run function kards:game/yongpaiku/shenji/wuyongshen