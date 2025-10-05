#冰霜荆棘
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:bingshuangjingji':1}] if predicate kards:sneak if items entity @s weapon.mainhand #minecraft:chest_armor run function kards:enchantment/book/add_enchantment/bingshuangjingji
#极寒之触
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:jihanzhichu':1}] if predicate kards:sneak if items entity @s weapon.mainhand #kards:melee_weapon run function kards:enchantment/book/add_enchantment/jihanzhichu
#大地神佑
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:dadishenyou':1}] if predicate kards:sneak if items entity @s weapon.mainhand #minecraft:enchantable/armor run function kards:enchantment/book/add_enchantment/dadishenyou
#泰坦体魄
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:taitantipo':1}] if predicate kards:sneak if items entity @s weapon.mainhand #chest_armor run function kards:enchantment/book/add_enchantment/taitantipo
#风行者
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:fengxingzhe':1}] if predicate kards:sneak if items entity @s weapon.mainhand #foot_armor run function kards:enchantment/book/add_enchantment/fengxingzhe
#跃斩
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:yuezhan':1}] if predicate kards:sneak if items entity @s weapon.mainhand #kards:weapon run function kards:enchantment/book/add_enchantment/yuezhan
#新星爆发
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:xinxingbaofa':1}] if predicate kards:sneak if items entity @s weapon.mainhand #kards:melee_weapon run function kards:enchantment/book/add_enchantment/xinxingbaofa
#浴火者
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:yuhuozhe':1}] if predicate kards:sneak if items entity @s weapon.mainhand #head_armor run function kards:enchantment/book/add_enchantment/yuhuozhe
#制裁者
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:zhicaizhe':1}] if predicate kards:sneak if items entity @s weapon.mainhand crossbow run function kards:enchantment/book/add_enchantment/zhicaizhe
#审判者
execute as @a if items entity @s weapon.offhand enchanted_book[stored_enchantments={'kards:shenpanzhe':1}] if predicate kards:sneak if items entity @s weapon.mainhand #minecraft:head_armor run function kards:enchantment/book/add_enchantment/shenpanzhe