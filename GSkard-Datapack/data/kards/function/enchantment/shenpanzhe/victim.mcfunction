tag @s add enchantment_shenpanzhe_victim

execute store result storage temp enchantment_temp.chance int 15 run data get entity @s equipment.head.components."minecraft:enchantments"."kards:shenpanzhe"
execute store result storage temp enchantment_temp.damage double 2.5 run data get entity @s equipment.head.components."minecraft:enchantments"."kards:shenpanzhe"
execute store result storage temp enchantment_temp.pierce_level int 1 run data get entity @s equipment.head.components."minecraft:enchantments"."kards:shenpanzhe"

function kards:enchantment/shenpanzhe/1 with storage temp enchantment_temp

tag @e[tag=enchantment_shenpanzhe_attacker] remove enchantment_shenpanzhe_attacker
tag @a[tag=enchantment_shenpanzhe_victim] remove enchantment_shenpanzhe_victim
data remove storage temp enchantment_temp