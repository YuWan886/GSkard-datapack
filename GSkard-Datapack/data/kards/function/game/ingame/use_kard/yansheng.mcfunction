#狂欢僵尸
execute as @a[scores={kardCount=2..,canuse=1}] if items entity @s weapon.offhand *[custom_data={kards:'狂欢僵尸'}] run function kards:game/yongpaiku/yansheng/kuanghuanzombie
#龙息
execute as @a if items entity @s weapon.offhand *[custom_data={kards:'龙息'}] run function kards:game/yongpaiku/yansheng/longxi