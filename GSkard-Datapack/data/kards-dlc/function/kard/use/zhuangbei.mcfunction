# 装备
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'模板：装备'}] if score @s kardCount >= #kard_template_zhuangbei kardCount run function kards-dlc:kard/type/zhuangbei/template_zhuangbei/use
# 饰品
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'模板：饰品'}] if score @s kardCount >= #kard_template_shipin kardCount run function kards-dlc:kard/type/shipin/template_shipin/use