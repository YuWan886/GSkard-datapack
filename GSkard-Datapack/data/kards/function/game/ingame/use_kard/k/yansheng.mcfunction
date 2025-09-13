#狂欢僵尸
execute if items entity @s weapon.offhand *[custom_data~{kards:'狂欢僵尸'}] if score @s kardCount >= #kard_kuanghuanzombie kardCount run function kards:game/yongpaiku/yansheng/kuanghuanzombie/1
#禁字决
execute unless entity @a[scores={jinzijue=10}] if score #system GameStatus matches 1..2 if items entity @s weapon.offhand redstone[custom_data~{kards:'禁字决'}] if score @s kardCount >= #kard_jinzijue kardCount run function kards:game/yongpaiku/yansheng/jinzijue/1
execute if items entity @s weapon.offhand *[custom_data~{kards:'龙息'}] run function kards:game/yongpaiku/yansheng/longxi
#无用
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data~{kards:'无用之基'}] if score @s kardCount >= #kard_wuyongjiben kardCount run function kards:game/yongpaiku/jiben/wuyongji
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data~{kards:'无用之法'}] if score @s kardCount >= #kard_wuyongfashu kardCount run function kards:game/yongpaiku/fashu/wuyongfa
execute if items entity @s weapon.offhand #minecraft:creeper_drop_music_discs[custom_data~{kards:'无用之神'}] if score @s kardCount >= #kard_wuyongshenji kardCount run function kards:game/yongpaiku/shenji/wuyongshen
#再来一罐
execute if items entity @s weapon.offhand magenta_shulker_box[custom_data~{kards:'再来一罐'}] if score @s kardCount >= #kard_zailaiyiguan kardCount run function kards:game/yongpaiku/yansheng/zailaiyiguan
#贪欲
execute if items entity @s weapon.offhand beetroot_soup[custom_data~{kards:'贪欲'}] if score @s kardCount >= #kard_tanyu kardCount run function kards:game/yongpaiku/yansheng/tanyumohe/1