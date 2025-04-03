#狂欢僵尸
execute if items entity @s weapon.offhand *[custom_data={kards:'狂欢僵尸'}] if score @s kardCount >= #kard_kuanghuanzombie kardCount run function kards:game/yongpaiku/yansheng/kuanghuanzombie
#龙息
<<<<<<< HEAD
execute if items entity @s weapon.offhand *[custom_data={kards:'龙息'}] run function kards:game/yongpaiku/yansheng/longxi
#禁字决
execute unless entity @a[scores={jinzijue=10}] if items entity @s weapon.offhand redstone[custom_data={kards:'禁字决'}] if score @s kardCount >= #kard_jinzijue kardCount run function kards:game/yongpaiku/yansheng/jinzijue/1
=======
execute as @a if items entity @s weapon.offhand *[custom_data={kards:'龙息'}] run function kards:game/yongpaiku/yansheng/longxi
#火球骰子
execute as @a[scores={kardCount=6..,canuse=1}] if items entity @s weapon.offhand *[custom_data={kards:'火球骰子'}] run function kards:game/yongpaiku/yansheng/huoqiutouzi
#君临天下
execute as @a if items entity @s weapon.offhand *[custom_data={kards:'君临天下'}] run function kards:game/yongpaiku/fashu/junlintianxia/jy0
>>>>>>> c337d2e (加入一些卡牌)
