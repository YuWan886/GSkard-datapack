#狂欢僵尸
execute if items entity @s weapon.offhand *[custom_data={kards:'狂欢僵尸'}] if score @s kardCount >= #kard_kuanghuanzombie kardCount run function kards:game/yongpaiku/yansheng/kuanghuanzombie
#龙息
execute if items entity @s weapon.offhand *[custom_data={kards:'龙息'}] if score @s kardCount >= #kard_longxi kardCount run function kards:game/yongpaiku/yansheng/longxi
#禁字决
execute unless entity @a[scores={jinzijue=10}] if items entity @s weapon.offhand redstone[custom_data={kards:'禁字决'}] if score @s kardCount >= #kard_jinzijue kardCount run function kards:game/yongpaiku/yansheng/jinzijue/1