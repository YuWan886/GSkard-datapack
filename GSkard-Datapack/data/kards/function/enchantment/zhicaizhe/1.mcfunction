tag @s add enchantment_zhicaizhe_arrow_temp

execute on origin if items entity @s weapon.* crossbow[enchantments~[{enchantments:'kards:zhicaizhe',levels:{min:1}}]] run tag @e[tag=enchantment_zhicaizhe_arrow_temp] add enchantment_zhicaizhe_arrow_1
execute as @e[tag=enchantment_zhicaizhe_arrow_1,tag=enchantment_zhicaizhe_arrow_temp] run data modify entity @s NoGravity set value 1b

execute on origin if items entity @s weapon.* crossbow[enchantments~[{enchantments:'kards:zhicaizhe',levels:{min:2}}]] run tag @e[tag=enchantment_zhicaizhe_arrow_temp] add enchantment_zhicaizhe_arrow_2
execute as @e[tag=enchantment_zhicaizhe_arrow_2,tag=enchantment_zhicaizhe_arrow_temp] run data modify entity @s crit set value 1b
execute as @e[tag=enchantment_zhicaizhe_arrow_2,tag=enchantment_zhicaizhe_arrow_temp] run data modify entity @s damage set value 5

execute on origin if items entity @s weapon.* crossbow[enchantments~[{enchantments:'kards:zhicaizhe',levels:{min:3}}]] run tag @e[tag=enchantment_zhicaizhe_arrow_temp] add enchantment_zhicaizhe_arrow_3

tag @e[tag=enchantment_zhicaizhe_arrow_temp] remove enchantment_zhicaizhe_arrow_temp